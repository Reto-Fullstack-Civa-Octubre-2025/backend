package org.civa.backend_reto.transporte.services.marca;

import org.civa.backend_reto.transporte.entities.Marca;

import java.util.List;
import java.util.Optional;

public interface IMarcaService {
    List<Marca> findAll();
    Optional<Marca> findById(Long marcaId);
    Marca save(Marca marca);
}
