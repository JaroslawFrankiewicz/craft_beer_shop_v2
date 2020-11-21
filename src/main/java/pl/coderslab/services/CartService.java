package pl.coderslab.services;

import pl.coderslab.entity.Cart;

public interface CartService {

    Cart getCartById(int id);
    void update(Cart cart);
}
