package org.civa.backend_reto.usuario.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@Entity
@Table(name = "users")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String email;
    private String username;
    private String password;

    private Boolean enabled = false;
    private String activationCode;


    @ManyToMany(fetch =  FetchType.EAGER)
    @JoinTable(
            name = "user_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
    )
    private Set<Role> roles = new HashSet<>();

    public List<String> getRoles() {
        return roles.stream().map(Role::getName).map(RoleType::name).toList();
    }

    public void updateRoles(List<Role> roles) {
        this.roles.clear();
        this.roles.addAll(roles);
    }

    public void enable() {
        this.enabled = true;
    }

    @PrePersist
    private void generateActivationCode() {
        this.activationCode = UUID.randomUUID().toString();
    }
}