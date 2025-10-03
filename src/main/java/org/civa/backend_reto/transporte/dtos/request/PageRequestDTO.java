package org.civa.backend_reto.transporte.dtos.request;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

public record PageRequestDTO(
        @Min(0)
        Integer page,

        @Min(1)
        @Max(50)
        Integer size,

        @NotBlank
        String sortBy,

        String direction
) {
    public Pageable toPageable(){
        int pageNumber = page != null ? page : 0;
        int pageSize = size != null ? size : 10;
        String sortField = (sortBy != null) ? sortBy : "id";
        String dir = (direction != null) ? direction : "asc";

        Sort sort = dir.equalsIgnoreCase("desc")
                ? Sort.by(sortField).descending()
                : Sort.by(sortField).ascending();

        return PageRequest.of(pageNumber, pageSize, sort);
    }
}
