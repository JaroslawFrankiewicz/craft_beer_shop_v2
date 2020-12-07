package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Cart;
import pl.coderslab.entity.CartItem;


@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {



//    Cart getCartById(long id);

//    void update(Cart cart);
}
