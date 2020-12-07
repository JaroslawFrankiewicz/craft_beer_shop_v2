package pl.coderslab.services;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.Beer;
import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;
import pl.coderslab.repository.BeerRepository;
import pl.coderslab.repository.CartItemRepository;
import pl.coderslab.repository.CartRepository;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;
import java.util.List;

@Service
@Scope(value = WebApplicationContext.SCOPE_SESSION, proxyMode = ScopedProxyMode.TARGET_CLASS)
@Transactional
public class CartServiceImpl implements CartService {

    private final CartRepository cartRepository;
    private final BeerRepository beerRepository;
    private final CartItemRepository cartItemRepository;


    public CartServiceImpl(CartRepository cartRepository, BeerRepository beerRepository, CartItemRepository cartItemRepository) {
        this.cartRepository = cartRepository;
        this.beerRepository = beerRepository;
        this.cartItemRepository = cartItemRepository;
    }

    @Override
    public void add(Cart cart) {
        cartRepository.save(cart);
    }

    @Override
    public void addBeerById(long id) {
        Beer beer = beerRepository.getBeerById(id);
        if (beer != null) {
            CartItem cartItem = new CartItem();
            cartItemRepository.save(cartItem);
        }
    }

    @Override
    public void clearCart() {
        cartRepository.deleteAll();
    }

    @Override
    public void removeCartItemByBeerId(long id) {
        cartRepository.deleteById(id);
    }

    @Override
    public List<Cart> getCart() {
        return cartRepository.findAll();
    }

    @Override
    public List<CartItem> getCartItems() {
        return cartItemRepository.findAll();
    }


    @Override
    public String getSubTotal() {

        double subTotal = 0;
        for (CartItem cartItem : cartItemRepository.findAll()) {
            subTotal += cartItem.getBeer().getPrice() * cartItem.getQuantity();
        }
        return String.format("%.2f", subTotal);
    }

}