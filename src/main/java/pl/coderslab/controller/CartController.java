package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.services.CartService;

import javax.servlet.http.HttpSession;


@Controller
@SessionAttributes({"/cart"})
public class CartController {
    private final CartService cartService;
    private final HttpSession session;


    @Autowired
    public CartController(CartService cartService, HttpSession session) {
        this.cartService = cartService;
        this.session = session;
    }
    @GetMapping("/cart")
    public String cart(Model model) {
        Object attribute = session.getAttribute("user");
        if (attribute instanceof User) {
            model.addAttribute("cart", cartService.getById(((User) attribute).getId()));
        }
        return "/cart";
    }

    @PostMapping("/cart/add/{beerId}")
    public String addToCart(Model model, @PathVariable long beerId) {
        Object attribute = session.getAttribute("user");
        if (attribute instanceof User) {
            cartService.addBeerById(((User) attribute).getId(), beerId);
        } else {
            return "login";
        }
        return "redirect:/cart";
    }

    @RequestMapping("/cart/removeBeer/{id}")
    public String removeProduct(@PathVariable long id) {
        cartService.removeCartItemById(id);
        return "redirect:/cart";
    }

    @RequestMapping("/cart/clear")
    public String clearCart() {
        Object attribute = session.getAttribute("user");
        if (attribute instanceof User) {
            cartService.clearCart(((User) attribute).getId());
        }
        return "redirect:/cart";
    }
}