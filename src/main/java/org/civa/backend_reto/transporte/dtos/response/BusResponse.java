package org.civa.backend_reto.transporte.dtos.response;

import java.time.LocalDateTime;
import java.util.List;

public record BusResponse(
        Long id,
        String numeroBus,
        String placa,
        LocalDateTime fechaCreacion,
        List<String> caracteristicas,
        String marca,
        String estado
) {
}
