package org.civa.backend_reto.usuario.config.services;

import org.springframework.security.crypto.password.PasswordEncoder;

public interface IBCryptHashingService extends IHashingService, PasswordEncoder {
}
