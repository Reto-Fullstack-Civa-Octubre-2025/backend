package org.civa.backend_reto.usuario.config.services;

public interface IHashingService {
    String encode(CharSequence rawPassword);
    boolean matches(CharSequence rawPassword, String encodedPassword);
}
