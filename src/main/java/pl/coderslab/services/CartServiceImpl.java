package pl.coderslab.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Cart;
import pl.coderslab.repository.CartRepository;

@Service
public class CartServiceImpl implements CartService {

    private final CartRepository cartRepository;

    @Autowired
    public CartServiceImpl(CartRepository cartRepository) {
        this.cartRepository = cartRepository;
    }

    @Override
    public Cart getCartById(int id) {
        return cartRepository.getCartById(id);
    }

    @Override
    public void update(Cart cart) {
        cartRepository.save(cart);
    }
}
