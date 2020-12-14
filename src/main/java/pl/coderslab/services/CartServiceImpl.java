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
    public void addBeerById(long userId, long beerId) {
        Beer beer = beerRepository.getBeerById(beerId);
        if (beer != null) {
            Cart cart = cartRepository.findByUserId(userId);
            if (cart == null) {
                cart = new Cart(userId);
                cart = cartRepository.save(cart);
            }
            CartItem cartItem = new CartItem(1, cart, beer);
            cartItemRepository.save(cartItem);
        }
    }

    @Override
    public void clearCart(long userId) {
        cartItemRepository.deleteByCartId(userId);
    }

    @Override
    public void removeCartItemById(long id) {
        cartItemRepository.deleteById(id);
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

    @Override
    public Cart getById(long cartId) {
        return cartRepository.findById(cartId).orElse(null);
    }

}