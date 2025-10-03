package org.civa.backend_reto.usuario.dto;

import java.util.List;

public record AuthResponse(
        Long userId,
        String username,
        String token,
        List<String> roles
) {
}
