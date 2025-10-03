package org.civa.backend_reto.transporte.services.bus;

import lombok.AllArgsConstructor;
import org.civa.backend_reto.transporte.entities.Bus;
import org.civa.backend_reto.transporte.entities.Marca;
import org.civa.backend_reto.transporte.repositories.BusRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class BusService implements IBusService {
    private final BusRepository busRepository;

    @Override
    public Page<Bus> findAll(Pageable pageable) {
        return busRepository.findAll(pageable);
    }

    @Override
    public Optional<Bus> findById(Long id) {
        return busRepository.findById(id);
    }

    @Override
    public Page<Bus> findByMarca(Marca marca, Pageable pageable) {
        return busRepository.findByMarca(marca, pageable);
    }

    @Override
    public Bus save(Bus bus) {
        busRepository.save(bus);
        return bus;
    }

    @Override
    public void deleteById(Long id) {
        busRepository.deleteById(id);
    }
}
