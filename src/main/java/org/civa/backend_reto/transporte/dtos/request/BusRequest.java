package org.civa.backend_reto.transporte.dtos.request;

import java.util.List;

public record BusRequest(
        String numeroBus,
        String placa,
        List<String> caracteristicas,
        Long marcaId,
        String estado
){

}
