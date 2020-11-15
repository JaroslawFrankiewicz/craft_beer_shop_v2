package pl.coderslab.controller;


import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.entity.Beer;
import pl.coderslab.entity.User;
import pl.coderslab.services.BeerServiceImpl;
import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.Optional;

@Slf4j
@Controller
//@RequestMapping("/beers")
public class BeerController {
    private final BeerServiceImpl beerServiceImpl;

    public BeerController(BeerServiceImpl beerServiceImpl) {
        this.beerServiceImpl = beerServiceImpl;
    }

//    @GetMapping("/")
//    public String welcome() {
//        return "index";
//    }

    @GetMapping("beersList")
    public String allBeers(Model model) {
        model.addAttribute("beer", beerServiceImpl.getBeer());
        return "beersList";
    }
    //@Admin
    @GetMapping("/add")
    public String add(Model model) {
        model.addAttribute("beer", new Beer());
//        model.addAttribute("user", new User());
        return "add";
    }
    //@Admin
    @PostMapping("/add")
    public String add(@Valid Beer beer, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "add";
        }
        beerServiceImpl.add(beer);
        return "redirect:/beersList";
    }

    @GetMapping("/show/{id}")
    public String show(Model model, @PathVariable long id) {
        model.addAttribute("beer", beerServiceImpl.findBeer(id).orElseThrow(EntityNotFoundException::new));
        return "show";
    }
    //@Admin
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        beerServiceImpl.delete(id);
        return "redirect:/beersList";
    }
    //@Admin
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable Long id, Model model) {
        Optional<Beer> beer = beerServiceImpl.findBeer(id);
        model.addAttribute("beer", beer);
        return "beerEdit";
    }
    //@Admin
    @PostMapping("/edit")
    public String edit(@Valid Beer beer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "beerEdit";
        }
        beerServiceImpl.add(beer);
        return "redirect:/beersList";
    }

}
