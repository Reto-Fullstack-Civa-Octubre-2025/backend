package org.civa.backend_reto.usuario.services;


import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ApplicationEventHandler {
    private final IRoleService roleService;
    private static final Logger LOGGER = LoggerFactory.getLogger(ApplicationEventHandler.class);

    @EventListener(ApplicationReadyEvent.class)
    public void on(ApplicationReadyEvent event) {
        roleService.seedRoles();
        LOGGER.info("Seed roles command executed successfully");
    }
}