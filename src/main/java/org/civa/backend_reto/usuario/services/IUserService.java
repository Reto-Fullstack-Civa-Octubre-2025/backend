package org.civa.backend_reto.usuario.services;

import org.civa.backend_reto.usuario.dto.AuthResponse;
import org.civa.backend_reto.usuario.dto.SignInRequest;
import org.civa.backend_reto.usuario.dto.SignUpRequest;
import org.civa.backend_reto.usuario.dto.UserResponse;

import java.util.List;

public interface IUserService {
    AuthResponse signIn(SignInRequest signInRequest);
    AuthResponse signUp(SignUpRequest signUpRequest);
    UserResponse findUserById(Long userId);
    List<UserResponse> findAllUsers();

}
