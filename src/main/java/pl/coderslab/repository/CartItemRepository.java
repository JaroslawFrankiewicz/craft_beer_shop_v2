package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;

import java.util.List;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    List<CartItem> findAll();

//    void addCartItem(CartItem cartItem);


//    void removeCartItem(long id);
//
//    void removeAllCartItems(Cart cart);

//    void deleteAllByCartId(Long id);

//    List<CartItem> findByCart(Cart Cart);
}
