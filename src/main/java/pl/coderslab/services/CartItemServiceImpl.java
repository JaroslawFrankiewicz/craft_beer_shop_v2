package pl.coderslab.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;
import pl.coderslab.repository.CartItemRepository;

@Service
public class CartItemServiceImpl implements CartItemService {

    private final CartItemRepository cartItemRepository;

    @Autowired
    public CartItemServiceImpl(CartItemRepository cartItemRepository) {
        this.cartItemRepository = cartItemRepository;
    }


    @Override
    public void addCartItem(CartItem cartItem) {
        cartItemRepository.save(cartItem);
    }
    @Override
    public void updateTotals() {
        cartItemRepository.flush();
    }

    @Override
    public void removeCartItem(long id) {
        cartItemRepository.deleteById(id);
    }

    @Override
    public void removeAllCartItems(Cart cart) {
        cartItemRepository.deleteAll();
    }
}