package org.civa.backend_reto.usuario.mapper;

import org.civa.backend_reto.usuario.domain.User;
import org.civa.backend_reto.usuario.dto.UserResponse;
import org.springframework.stereotype.Service;

@Service
public class UserMapper {
    public UserResponse fromEntity(User user) {
        return new UserResponse(
                user.getId(),
                user.getEmail(),
                user.getUsername(),
                user.getEnabled(),
                user.getRoles()
        );
    }

}
