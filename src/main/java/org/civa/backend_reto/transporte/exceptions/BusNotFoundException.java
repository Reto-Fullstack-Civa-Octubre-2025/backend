package org.civa.backend_reto.transporte.exceptions;

public class BusNotFoundException extends RuntimeException {
    public BusNotFoundException(String message) {
        super(message);
    }
}
