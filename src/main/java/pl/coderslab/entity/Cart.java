package pl.coderslab.entity;

import lombok.*;
import javax.persistence.*;
import java.util.Set;


@NoArgsConstructor
@AllArgsConstructor
@Entity
@Data
@Table(name="cart")
public class Cart {

    @Id
    private long id;

    @OneToMany(mappedBy = "cart")
    private Set<CartItem> cartItems;

    @OneToOne(mappedBy = "cart")
    private User user;

    public Cart(long id) {
        this.id = id;
    }
}
