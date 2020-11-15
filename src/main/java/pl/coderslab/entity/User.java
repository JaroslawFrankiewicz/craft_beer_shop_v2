package pl.coderslab.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String login;

    @NotBlank
    private String password;

//    @Column(name = "first_name")
    @NotBlank
    private String firstName;

//    @Column(name = "second_name")
    @NotBlank
    private String secondName;

    @Email
    @NotBlank
    private String email;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "user_role"
            , joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))

    private Set<Role> roles;
}



//    @EqualsAndHashCode.Exclude
//    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
//    private Set<OrderEntity> orders;
//
//    private UserRole userRole;

