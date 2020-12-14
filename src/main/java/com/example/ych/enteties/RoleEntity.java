package com.example.ych.enteties;

import com.example.ych.RolesEnum;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;

import javax.persistence.*;
import javax.validation.constraints.Size;
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
    @Enumerated(EnumType.STRING)
    private RolesEnum role;

    @Transient
    @ManyToMany(mappedBy = "roles")
    private Set<UserEntity> clients;

    public RoleEntity(Integer id, RolesEnum role) {
        this.id = id;
        this.role = role;
    }

    @Override
    public String getAuthority() {
        return getRole().name;
    }
}