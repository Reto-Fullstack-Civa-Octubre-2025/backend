package org.civa.backend_reto.usuario.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    private RoleType name;

    /**
     * Get the default role
     * @return the default role
     */
    public static Role getDefaultRole(){
        return Role.builder()
                .name(RoleType.USER)
                .build();
    }

    /**
     * Get the role from its name
     * @param name the name of the role
     * @return the role
     */
    public static Role fromName(String name) {
        for (RoleType roleType : RoleType.values()) {
            if (roleType.name().equals(name)) {
                return Role.builder()
                        .name(roleType)
                        .build();
            }
        }
        throw new IllegalArgumentException("Invalid role name: " + name);
    }
}