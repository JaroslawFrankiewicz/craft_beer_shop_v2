package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.CartItem;


@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long> {

//    List<CartItem> findAll();

    void deleteByCartId(long cartId);

//    void addCartItem(CartItem cartItem);

//    List<CartItem> findByCart(Cart Cart);
}
