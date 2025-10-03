package org.civa.backend_reto.usuario.dto;

import jakarta.validation.constraints.Email;

public record SignInRequest(
        String username,
        String password
) {
}
