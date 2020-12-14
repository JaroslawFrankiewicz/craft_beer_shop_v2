package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Cart;


@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

    Cart findByUserId(long userId);

//    Cart getCartById(long id);

//    void update(Cart cart);
}
