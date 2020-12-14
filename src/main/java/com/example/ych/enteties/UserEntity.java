package com.example.ych.enteties;

import lombok.*;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

@Entity
@Table(name = "clients")
@ToString
@EqualsAndHashCode
@Getter
@Setter
@NoArgsConstructor
public class UserEntity implements Serializable, UserDetails {

    @Id
    @Column(name = "id")
    @SequenceGenerator(name = "clients_id_seq",
            sequenceName = "clients_id_seq",
            allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE,
            generator = "clients_id_seq")
    private Integer id;

    @Column(name = "email")
    @Email(message = "Email in wrong format")
    @Size(max = 150, message = "Email can't be more that 150 characters")
    private String email;

    @Transient
    private String passwordConfirm;

    @Transient
    @NotNull(message = "error.user.password.null")
    private String password;

    @Column(name = "pib")
    @Size(max = 250, message = "errors.client.pib.size")
    private String pib;

    @Column(name = "description")
    private String description;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<RoleEntity> roles;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return null;
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
}
