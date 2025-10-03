package org.civa.backend_reto.transporte.repositories;

import org.civa.backend_reto.transporte.entities.Bus;
import org.civa.backend_reto.transporte.entities.Marca;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BusRepository extends JpaRepository<Bus,Long> {
    Page<Bus> findByMarca(Marca marca, Pageable pageable);
}
