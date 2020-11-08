package pl.coderslab.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.coderslab.entity.Beer;
import java.util.List;

@Repository
public interface BeerRepository extends JpaRepository<Beer,Long> {
    
    List<Beer> findAll();

}
