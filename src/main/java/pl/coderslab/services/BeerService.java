package pl.coderslab.services;

import pl.coderslab.entity.Beer;
import java.util.List;
import java.util.Optional;

public interface BeerService {

    List<Beer> getBeer();

    void add(Beer beer);

    Optional<Beer> findBeer(Long id);

    void delete(Long id);

    void update(Beer beer);

    Beer getBeerById(Long id);
}
