package org.civa.backend_reto.transporte.services.marca;

import lombok.AllArgsConstructor;
import org.civa.backend_reto.transporte.entities.Marca;
import org.civa.backend_reto.transporte.repositories.MarcaRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class MarcaService implements IMarcaService {
    private final MarcaRepository marcaRepository;

    @Override
    public List<Marca> findAll() {
        return marcaRepository.findAll();
    }

    @Override
    public Optional<Marca> findById(Long marcaId) {
        return marcaRepository.findById(marcaId);
    }

    @Override
    public Marca save(Marca marca) {
        marcaRepository.save(marca);
        return marca;
    }
}
