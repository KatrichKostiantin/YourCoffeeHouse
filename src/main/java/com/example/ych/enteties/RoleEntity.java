package com.example.ych.enteties;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import java.util.Set;

@Entity
@Getter
@Setter
@Table(name = "roles")
@NoArgsConstructor
public class RoleEntity implements GrantedAuthority {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "role_id_seq",
            sequenceName = "role_id_seq",
            allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator = "role_id_seq")
    private Integer id;

    @Column(name = "role")
    private String role;

    @Transient
    @ManyToMany(mappedBy = "roles")
    private Set<UserEntity> clients;

    public RoleEntity(Integer id, String role) {
        this.id = id;
        this.role = role;
    }

    @Override
    public String getAuthority() {
        return getRole();
    }
}