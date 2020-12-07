package pl.coderslab.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import javax.persistence.*;
import java.util.List;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name="cart")
public class Cart {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @OneToMany(mappedBy = "cart", cascade = CascadeType.ALL,fetch=FetchType.EAGER)
    private List<CartItem> cartItems;

    @OneToOne
    @JoinColumn(name = "user_id")
    @JsonIgnore
    private User user;

//
//    @OneToMany(mappedBy = "cart", cascade = CascadeType.ALL)
//    @EqualsAndHashCode.Exclude
//    private Set<CartItem> cartItemSet = new HashSet<>();
//    public void addCartItems(Set<CartItem> cartItems){
//        cartItemSet.addAll(cartItems);
//        cartItems.forEach(cartItem -> cartItem.setCart(this));
//    }

}
