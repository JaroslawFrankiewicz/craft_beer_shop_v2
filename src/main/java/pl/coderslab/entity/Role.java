package pl.coderslab.entity;

import lombok.*;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "role")
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

//    @ManyToMany(cascade = CascadeType.ALL)
//    @JoinTable(name="User_role", joinColumns= @JoinColumn(name="ROLE_ID"), inverseJoinColumns = @JoinColumn(name="USER_ID"))
//    private Set<User> users;

}
