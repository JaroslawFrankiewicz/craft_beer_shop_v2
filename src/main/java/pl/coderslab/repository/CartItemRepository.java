package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.CartItem;


@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long> {

    void deleteByCartId(long cartId);

}
