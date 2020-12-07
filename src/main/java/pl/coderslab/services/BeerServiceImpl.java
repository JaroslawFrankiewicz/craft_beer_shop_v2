package pl.coderslab.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.Beer;
import pl.coderslab.repository.BeerRepository;

import java.util.List;
import java.util.Optional;

@Service
public class BeerServiceImpl implements BeerService {

    private final BeerRepository beerRepository;

    @Autowired
    public BeerServiceImpl(BeerRepository beerRepository) {
        this.beerRepository = beerRepository;
    }

    @Override
    public List<Beer> getBeer() {
        return beerRepository.findAll();
    }

    @Override
    public void add(Beer beer) {
        beerRepository.save(beer);
    }

    @Override
    public Optional<Beer> findBeer(Long id) {
        return beerRepository.findById(id);
    }

    @Override
    public void delete(Long id) {
        beerRepository.deleteById(id);
    }

    @Override
    public void update(Beer beer) {
        beerRepository.save(beer);
    }

    @Override
    public Beer getBeerById(Long id) {
        return beerRepository.findById(id).orElseThrow(RuntimeException::new);
    }
}
