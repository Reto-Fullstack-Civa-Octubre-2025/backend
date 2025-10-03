package org.civa.backend_reto.usuario.dto;

import java.util.List;

public record UserResponse(
        Long id,
        String email,
        String username,
        Boolean enabled,
        List<String> roles
) {
}
