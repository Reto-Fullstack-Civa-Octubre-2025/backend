package org.civa.backend_reto.transporte.mappers;

import org.civa.backend_reto.transporte.dtos.request.BusRequest;
import org.civa.backend_reto.transporte.dtos.response.BusResponse;
import org.civa.backend_reto.transporte.entities.Bus;
import org.civa.backend_reto.transporte.entities.Marca;
import org.springframework.stereotype.Service;

@Service
public class BusMapper {
    public BusResponse fromEntityToDto(Bus bus){
        return new BusResponse(
                bus.getId(),
                bus.getNumeroBus(),
                bus.getPlaca(),
                bus.getFechaCreacion(),
                bus.getCaracteristicas(),
                bus.getMarca().getNombre(),
                bus.getEstado()
        );
    }

    public Bus fromDtoToEntity(BusRequest request, Marca marca){
        Bus newBus = new Bus();
        newBus.setNumeroBus(request.numeroBus());
        newBus.setPlaca(request.placa());
        newBus.setCaracteristicas(request.caracteristicas());
        newBus.setEstado(request.estado());
        newBus.setMarca(marca);
        return newBus;
    }
}
