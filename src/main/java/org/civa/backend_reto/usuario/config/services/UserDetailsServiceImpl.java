package org.civa.backend_reto.usuario.config.services;

import lombok.RequiredArgsConstructor;
import org.civa.backend_reto.usuario.config.model.UserDetailsImpl;
import org.civa.backend_reto.usuario.repositories.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {
    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return userRepository.findByUsername(username)
                .map(UserDetailsImpl::build)
                .orElseThrow(() -> new UsernameNotFoundException("USER DETAILS SERVICE::User Not Found with username: " + username));
    }
}
