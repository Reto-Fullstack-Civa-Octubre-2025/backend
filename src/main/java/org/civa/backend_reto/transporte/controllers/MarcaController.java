package org.civa.backend_reto.transporte.controllers;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.AllArgsConstructor;
import org.civa.backend_reto.transporte.dtos.request.MarcaRequest;
import org.civa.backend_reto.transporte.entities.Marca;
import org.civa.backend_reto.transporte.mappers.MarcaMapper;
import org.civa.backend_reto.transporte.services.marca.IMarcaService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("marca")
@AllArgsConstructor
@Tag(name = "Marcas")
public class MarcaController {
    private final IMarcaService marcaService;
    private final MarcaMapper marcaMapper;

    @GetMapping
    public List<Marca> findAll() {
        return marcaService.findAll();
    }

    @PostMapping
    public ResponseEntity<Marca> save(@RequestBody MarcaRequest request) {
        var marca = marcaMapper.fromDtoToEntity(request);
        marcaService.save(marca);
        return ResponseEntity.ok(marca);
    }
}
