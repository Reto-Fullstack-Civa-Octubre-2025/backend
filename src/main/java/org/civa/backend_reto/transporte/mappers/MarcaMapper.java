package org.civa.backend_reto.transporte.mappers;

import org.civa.backend_reto.transporte.dtos.request.MarcaRequest;
import org.civa.backend_reto.transporte.dtos.response.MarcaResponse;
import org.civa.backend_reto.transporte.entities.Marca;
import org.springframework.stereotype.Service;

@Service
public class MarcaMapper {
    public MarcaResponse fromEntity(Marca marca){
        return new MarcaResponse(marca.getNombre());
    }

    public Marca fromDtoToEntity(MarcaRequest request){
        var marca = new Marca();
        marca.setNombre(marca.getNombre());
        return marca;
    }
}
