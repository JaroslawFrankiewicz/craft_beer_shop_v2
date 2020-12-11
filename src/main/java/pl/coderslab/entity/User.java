package pl.coderslab.entity;

import lombok.*;
import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.List;
import java.util.Set;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 2)
    @NotEmpty(message = "*Please provide a login")
    private String login;

    @Transient
//    @Length(min = 6, message = "*Your password must have at least 6 characters")
    @NotEmpty(message = "*Please provide your password")
    private String password;

//    @Column(name = "first_name")
    @Size(min = 2)
    @NotEmpty(message = "*Please provide your first name")
    private String firstName;

//    @Column(name = "second_name")
    @Size(min = 2)
    @NotEmpty(message = "*Please provide your last name")
    private String lastName;

    @Email
    @NotEmpty(message = "*Please provide a valid Email")
    private String email;

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "User_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;
//
//    @OneToMany(fetch = FetchType.LAZY, mappedBy = "user_id", cascade = CascadeType.ALL)
//    private List<Cart> cart;

    @OneToOne(cascade = CascadeType.ALL, mappedBy = "user")
    private Cart cart;

}



//    @EqualsAndHashCode.Exclude
//    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
//    private Set<OrderEntity> orders;
//
//    private UserRole userRole;

