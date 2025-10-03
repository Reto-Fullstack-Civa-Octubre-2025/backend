package org.civa.backend_reto.usuario.services;

import java.util.List;

public interface ITokenService {
    String generateToken(String username);
    String generateToken(String username, Long userId, List<String> roles);
    String getUsernameFromToken(String token);
    boolean validateToken(String token);
}
