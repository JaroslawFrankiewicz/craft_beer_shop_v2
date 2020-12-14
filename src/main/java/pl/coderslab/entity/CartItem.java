package pl.coderslab.entity;

import lombok.*;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "cartItem")
public class CartItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long itemId;

    @NotNull
    private int quantity;

    @ManyToOne
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @JoinColumn(name = "cart_id")
    private Cart cart;

    @ManyToOne
    @EqualsAndHashCode.Exclude
    @ToString.Exclude
    @JoinColumn(name = "beer_id")
    private Beer beer;

    public CartItem(@NotNull int quantity, Cart cart, Beer beer) {
        this.quantity = quantity;
        this.cart = cart;
        this.beer = beer;
    }
}