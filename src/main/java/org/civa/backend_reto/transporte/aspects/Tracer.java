package org.civa.backend_reto.transporte.aspects;

import org.springframework.stereotype.Service;

@Service
public class Tracer {
    private String traceId = "UU-XXX-000";

    public String getTraceId() {
        return traceId;
    }
}
