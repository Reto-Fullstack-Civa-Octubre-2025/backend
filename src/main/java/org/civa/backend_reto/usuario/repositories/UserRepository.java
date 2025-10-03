package org.civa.backend_reto.usuario.repositories;

import org.civa.backend_reto.usuario.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    Optional<User> findByUsername(String username);
    Optional<User> findByActivationCode(String code);
}
