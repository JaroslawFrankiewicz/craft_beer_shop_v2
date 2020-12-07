package pl.coderslab.services;


import pl.coderslab.entity.Beer;
import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;
import pl.coderslab.exception.NotEnoughProductsInStockException;
import pl.coderslab.exception.NotFoundException;

import java.util.List;


import java.math.BigDecimal;
import java.util.Map;

public interface CartService {

    void add(Cart cart);

//    Cart getCart();

    void addBeerById(long id);

    void clearCart();

    void removeCartItemByBeerId(long id);

    List<Cart> getCart();

    List<CartItem> getCartItems();

    String getSubTotal();

//    void addBeer(Beer beer);
//    void removeBeer(Beer beer);
//    void clearBeer();
//    Map<Beer, Integer> beerInCart();
//    BigDecimal totalPrice();
//    void cartCheckout();
//
//    Cart getCartById(long id);
//
//    Cart updateCart(Cart Cart) throws NotFoundException;
//
//    void clearCart(Cart Cart);

//    void update(Cart cart);

//    List<Cart> showAllCarts();
//    Cart createNewCart(Cart cart);
//    Cart addCartItemToCart(CartItem cartItem, Long cartId);
//    Cart showCartItemsInCart(Long cartId) throws NotFoundException;
//    Cart findById(Long cartId) throws NotFoundException;
}
