package org.civa.backend_reto.transporte.repositories;

import org.civa.backend_reto.transporte.entities.Marca;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MarcaRepository extends JpaRepository<Marca,Long> {
}
