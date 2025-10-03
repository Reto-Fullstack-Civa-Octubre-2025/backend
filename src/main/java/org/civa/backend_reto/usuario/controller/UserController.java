package org.civa.backend_reto.usuario.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.civa.backend_reto.usuario.dto.UserResponse;
import org.civa.backend_reto.usuario.mapper.UserMapper;
import org.civa.backend_reto.usuario.services.IUserService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("users")
@RequiredArgsConstructor
@Tag(name = "Users")
public class UserController {
    private final IUserService userService;
    private final UserMapper userMapper;

    @GetMapping()
    public ResponseEntity<List<UserResponse>> getAll(){
        var users = this.userService.findAllUsers();
        return ResponseEntity.ok(users);
    }

    @GetMapping("/{userId}")
    public ResponseEntity<UserResponse> getAll(@PathVariable Long userId){
        var user = this.userService.findUserById(userId);
        return ResponseEntity.ok(user);
    }


}
