package org.civa.backend_reto.usuario.repositories;

import org.civa.backend_reto.usuario.domain.Role;
import org.civa.backend_reto.usuario.domain.RoleType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RoleRepository extends JpaRepository<Role,Long> {
    Optional<Role> findByName(RoleType name);
    List<Role> findByNameIn(List<RoleType> names);
    boolean existsByName(RoleType name);
}