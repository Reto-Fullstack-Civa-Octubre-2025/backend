package org.civa.backend_reto.usuario.services;

import lombok.RequiredArgsConstructor;
import org.civa.backend_reto.usuario.domain.Role;
import org.civa.backend_reto.usuario.domain.RoleType;
import org.civa.backend_reto.usuario.repositories.RoleRepository;
import org.springframework.stereotype.Service;

import java.util.Arrays;

@Service
@RequiredArgsConstructor
public class RoleServiceImpl implements IRoleService {
    private final RoleRepository roleRepository;

    @Override
    public void seedRoles() {
        Arrays.stream(RoleType.values()).forEach(role -> {
            if(!roleRepository.existsByName(role)){
                roleRepository.save(Role.builder().name(role).build());
            }
        });
    }
}
