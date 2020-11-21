package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Cart;


@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

    Cart getCartById(int id);

//    void update(Cart cart);
}
