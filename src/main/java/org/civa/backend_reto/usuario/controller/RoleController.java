package org.civa.backend_reto.usuario.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import org.civa.backend_reto.usuario.domain.RoleType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("roles")
@Tag(name = "Roles")
public class RoleController {
    @GetMapping()
    public ResponseEntity<List<String>> getAll(){
        var roles = Arrays.stream(RoleType.values()).map(Enum::toString).toList();
        return ResponseEntity.ok(roles);
    }
}
