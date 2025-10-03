package org.civa.backend_reto;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableJpaAuditing
public class BackendRetoApplication {

    public static void main(String[] args) {
        SpringApplication.run(BackendRetoApplication.class, args);
    }

}
