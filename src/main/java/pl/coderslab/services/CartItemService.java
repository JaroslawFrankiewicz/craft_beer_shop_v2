package pl.coderslab.services;

import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;

import java.math.BigDecimal;

public interface CartItemService {

    void updateTotals();

    void addCartItem(CartItem cartItem);

    void removeCartItem(long id);

    void removeAllCartItems(Cart cart);
}
