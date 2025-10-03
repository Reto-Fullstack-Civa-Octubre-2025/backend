package org.civa.backend_reto.transporte.services.bus;

import org.civa.backend_reto.transporte.entities.Bus;
import org.civa.backend_reto.transporte.entities.Marca;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

public interface IBusService {
    Page<Bus> findAll(Pageable pageable);
    Optional<Bus> findById(Long id);
    Page<Bus> findByMarca(Marca marca,  Pageable pageable);
    Bus save(Bus bus);
    void deleteById(Long id);
}
