package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.Beer;
import pl.coderslab.services.BeerService;
import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.Optional;

@Slf4j
@Controller
public class BeerController {
    private final BeerService beerService;

    public BeerController(BeerService beerService) {
        this.beerService = beerService;
    }


    @GetMapping("beersList")
    public String allBeers(Model model) {
        model.addAttribute("beer", beerService.getBeer());
        return "beersList";
    }

    @GetMapping("/beerDetails/{id}")
    public String getBeerById(Model model, @PathVariable long id) {
        model.addAttribute("beer", beerService.findBeer(id).orElseThrow(EntityNotFoundException::new));
        return "beerDetails";
    }

        @Secured({"ROLE_ADMIN", "ROLE_USER"})
    @GetMapping("admin/beersList")
    public String allBeersAdmin(Model model) {
        model.addAttribute("beer", beerService.getBeer());
        return "admin/beersList";
    }


        @Secured({"ROLE_ADMIN", "ROLE_USER"})
    @GetMapping("/admin/add")
    public String add(Model model) {
        model.addAttribute("beer", new Beer());
        return "admin/add";
    }

        @Secured({"ROLE_ADMIN", "ROLE_USER"})
    @PostMapping("/admin/add")
    public String add(@ModelAttribute("beer") @Valid Beer beer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            System.out.println("There are errors" + bindingResult.getAllErrors());
            return "admin/add";
        }
        beerService.add(beer);
        return "redirect:/admin/beersList";
    }

    @Secured({"ROLE_ADMIN", "ROLE_USER"})
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable long id) {
        beerService.delete(id);
        return "redirect:/beersList";
    }

    @Secured({"ROLE_ADMIN", "ROLE_USER"})
    @GetMapping("/admin/edit/{id}")
    public String edit(@PathVariable long id, Model model) {
        Optional<Beer> beer = beerService.findBeer(id);
        model.addAttribute("beer", beer);
        return "admin/beerDetails";
    }

    @Secured({"ROLE_ADMIN", "ROLE_USER"})
    @PostMapping("/admin/edit")
    public String edit(@Valid Beer beer, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "admin/beerDetails";
        }
        beerService.add(beer);
        return "redirect:/beersList";
    }

}
