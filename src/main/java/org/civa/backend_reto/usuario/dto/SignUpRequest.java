package org.civa.backend_reto.usuario.dto;

import jakarta.validation.constraints.Email;

import java.util.List;

public record SignUpRequest(
        String username,
        String password,
        @Email
        String email,
        List<String> roles
        ) {
}
