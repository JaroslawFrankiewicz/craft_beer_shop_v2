package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Beer;
import java.util.List;
import java.util.Optional;

@Repository
public interface BeerRepository extends JpaRepository<Beer,Long> {
    Optional<Beer> findById(Long id);
    List<Beer> findAll();
    Beer getBeerById(long id);
}
