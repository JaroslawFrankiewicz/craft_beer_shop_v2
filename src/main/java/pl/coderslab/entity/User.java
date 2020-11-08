package pl.coderslab.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Email
    @NotBlank
    private String email;

    @Column(name = "first_name")
    @NotBlank
    private String firstName;

    @Column(name = "second_name")
    @NotBlank
    private String secondName;

    @NotBlank
    private String login;

    @NotBlank
    private String password;
}



//    @EqualsAndHashCode.Exclude
//    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
//    private Set<OrderEntity> orders;
//
//    private UserRole userRole;

