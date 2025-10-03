package org.civa.backend_reto.usuario.controller;


import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.civa.backend_reto.usuario.dto.AuthResponse;
import org.civa.backend_reto.usuario.dto.SignInRequest;
import org.civa.backend_reto.usuario.dto.SignUpRequest;
import org.civa.backend_reto.usuario.mapper.UserMapper;
import org.civa.backend_reto.usuario.services.IUserService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("auth")
@RequiredArgsConstructor
@Tag(name = "Auth")
public class AuthController {
    private final IUserService userService;
    private final UserMapper userMapper;

    @PostMapping("/sign-in")
    public ResponseEntity<AuthResponse> signIn(@RequestBody SignInRequest request){
        var authResponse = userService.signIn(request);
        return ResponseEntity.ok(authResponse);
    }
    @PostMapping("/sign-up")
    public ResponseEntity<AuthResponse> signUp(@Valid @RequestBody SignUpRequest request){
        var authResponse = userService.signUp(request);
        return ResponseEntity.ok(authResponse);
    }
}
