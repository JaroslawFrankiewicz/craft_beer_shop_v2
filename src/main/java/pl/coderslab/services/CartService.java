package pl.coderslab.services;


import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;

import java.util.List;

public interface CartService {

    void add(Cart cart);

    void addBeerById(long userId, long beerId);

    void clearCart(long userId);

    void removeCartItemById(long cartId);

    List<Cart> getCart();

    List<CartItem> getCartItems();

    String getSubTotal();

    Cart getById(long cartId);

}
