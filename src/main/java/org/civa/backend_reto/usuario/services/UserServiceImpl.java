package org.civa.backend_reto.usuario.services;

import lombok.RequiredArgsConstructor;
import org.civa.backend_reto.usuario.config.services.IHashingService;
import org.civa.backend_reto.usuario.domain.RoleType;
import org.civa.backend_reto.usuario.domain.User;
import org.civa.backend_reto.usuario.dto.AuthResponse;
import org.civa.backend_reto.usuario.dto.SignInRequest;
import org.civa.backend_reto.usuario.dto.SignUpRequest;
import org.civa.backend_reto.usuario.dto.UserResponse;
import org.civa.backend_reto.usuario.mapper.UserMapper;
import org.civa.backend_reto.usuario.repositories.RoleRepository;
import org.civa.backend_reto.usuario.repositories.UserRepository;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements IUserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final IHashingService hashingService;
    private final ITokenService tokenService;
    private final UserMapper userMapper;

    @Override
    public AuthResponse signIn(SignInRequest request) {
        User user = userRepository.findByUsername(request.username())
                .orElseThrow(()->new UsernameNotFoundException(request.username()));

        if(!hashingService.matches(request.password(), user.getPassword())) {
            throw new RuntimeException("Invalid password for user: "+ request.username());
        }

        Long userId = user.getId();
        List<String> roles = user.getRoles();
        String token = tokenService.generateToken(request.username(),userId,roles);

        return new AuthResponse(userId, request.username(), token,roles);
    }

    @Override
    public AuthResponse signUp(SignUpRequest request) {
        Optional<User> user = userRepository.findByUsername(request.username());
        if(user.isPresent()) {throw new RuntimeException("Username already exists");}

        User userRegistered = new User();
        var roles = request.roles().stream()
                .map(name->roleRepository.findByName(RoleType.valueOf(name))
                        .orElseThrow(()->new RuntimeException("Role not found")))
                .collect(Collectors.toSet());

        userRegistered.setUsername(request.username());
        userRegistered.setEnabled(true);
        userRegistered.setEmail(request.email());
        userRegistered.setPassword(hashingService.encode(request.password()));
        userRegistered.setRoles(roles);

        userRepository.save(userRegistered);
        String token =  tokenService.generateToken(request.username(),userRegistered.getId(),userRegistered.getRoles());

        return new AuthResponse(userRegistered.getId(),request.username(),token,userRegistered.getRoles());
    }

    @Override
    public UserResponse findUserById(Long userId) {
        Optional<User> user = userRepository.findById(userId);
        if (user.isEmpty()){
            throw new RuntimeException("User not found");
        }
        return userMapper.fromEntity(user.get());
    }

    @Override
    public List<UserResponse> findAllUsers() {
        return userRepository.findAll().stream().map(userMapper::fromEntity).toList();
    }
}
