package org.civa.backend_reto.transporte.controllers;

import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import org.civa.backend_reto.transporte.dtos.request.BusRequest;
import org.civa.backend_reto.transporte.dtos.request.PageRequestDTO;
import org.civa.backend_reto.transporte.dtos.response.BusResponse;
import org.civa.backend_reto.transporte.dtos.response.PageResponse;
import org.civa.backend_reto.transporte.mappers.BusMapper;
import org.civa.backend_reto.transporte.services.bus.IBusService;
import org.civa.backend_reto.transporte.services.marca.IMarcaService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("bus")
@AllArgsConstructor
@Tag(name = "Buses")
public class BusController {
    private final IBusService busService;
    private final IMarcaService marcaService;
    private final BusMapper busMapper;

    @GetMapping
    public ResponseEntity<PageResponse<BusResponse>> findAll(@Valid PageRequestDTO pageRequest) {
        var pageable = pageRequest.toPageable();
        var busesResponse = busService.findAll(pageable).map(busMapper::fromEntityToDto);
        return  ResponseEntity.ok(new PageResponse<>(busesResponse));
    }

    @GetMapping("/{id}")
    public ResponseEntity<BusResponse>  findById(@PathVariable Long id) {
        var bus = busService.findById(id);
        if (bus.isEmpty())
            return ResponseEntity.notFound().build();
        return ResponseEntity.ok(busMapper.fromEntityToDto(bus.get()));
    }

    @PostMapping
    public ResponseEntity<BusResponse> saveBus(@RequestBody BusRequest request) {
        var marca = marcaService.findById(request.marcaId());
        if (marca.isEmpty())
            return ResponseEntity.notFound().build();
        var bus = busMapper.fromDtoToEntity(request, marca.get());
        return ResponseEntity.ok(busMapper.fromEntityToDto(busService.save(bus)));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<BusResponse> deleteBus(@PathVariable Long id) {
        var bus = busService.findById(id);
        if (bus.isEmpty())
            return ResponseEntity.notFound().build();
        busService.deleteById(id);
        return ResponseEntity.ok().build();
    }
}
