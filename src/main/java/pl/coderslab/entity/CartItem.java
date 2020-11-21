package pl.coderslab.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;
import javax.persistence.*;


@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "cartItem")
public class CartItem {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    // It's mean CartItem table is many and Cart table is one. That is Many to one relationship
    @JoinColumn(name = "cart_id") //It's mean we gonna create one cardId field in cartItem table to refer to Cart table
    @JsonIgnore
    //when we try to tell spring to convert this class object into json format, then this field gonna be excepted
    private Cart cart;

    @ManyToOne
    // It's mean CartItem table is many and Product table is one. That is Many to one relationship
    @JoinColumn(name = "beer_id")
    //It's mean we gonna create one productId field in cartItem table to refer to Product table
    private Beer beer;

    private int quantity; // the number of product we gonna add to the cart

    private double totalPrice; // total price of this cart item
}