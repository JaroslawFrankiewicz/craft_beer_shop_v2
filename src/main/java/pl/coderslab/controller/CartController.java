package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.services.BeerService;
import pl.coderslab.services.CartService;

@Controller
@SessionAttributes({"/cart"})
public class CartController {
    private final CartService cartService;
    private final BeerService beerService;


    @Autowired
    public CartController(CartService cartService, BeerService beerService) {
        this.cartService = cartService;
        this.beerService = beerService;
    }


//    @PostMapping("/cart/add")
//    public String addProduct(@RequestParam("id") Long id,
//                             @RequestParam(value = "quantity" , defaultValue = "1") Integer quantity,
//                             RedirectAttributes redirectAttributes) throws NotEnoughProductsInStockException {
//        List<Cart> cart = cartService.getCart();
//        Beer beer = beerService.getBeerById(id);
//        boolean alreadyInCart = false;
//
////        Integer unitStock = beer.getUnitStock();
////        if (unitStock < quantity) {
////            throw new NotEnoughProductsInStockException(beer);
////            return "beersList";
////        }
//
//        for (CartItem cI : cartService.getCartItems()) {
//            if (beer.getName().equals(cI.getBeer().getName())) {
//                cI.setQuantity(cI.getQuantity() + quantity);
//                cI.getBeer().setUnitStock(cI.getBeer().getUnitStock() - quantity);
//                alreadyInCart = true;
//            }
//        }
//
//        if (!alreadyInCart) {
//            CartItem cartItem = new CartItem();
//            cartService.getCartItems();
//        }
//
//
//        beer.setUnitStock(beer.getUnitStock() - quantity);
//        beerService.add(beer);
//
//        return "redirect:/beersList";
//    }
//
//    @GetMapping("/cart")
//    public String showCart(Model model) {
//        model.addAttribute("ppurchases", cartService.getCartItems());
//        model.addAttribute("subTotal", cartService.getSubTotal());
//        return "/cart";
//    }


    @GetMapping("/cart")
    public String cart(Model model) {
        model.addAttribute(cartService.getCart());
        return "/cart";
    }

    @PostMapping("/cart/addBeer/{id}")
    public String addToCart(@PathVariable long id) {
        cartService.addBeerById(id);
        return "/cart";

    }

    @RequestMapping("/removeProduct/{id}")
    public String removeProduct(@PathVariable long id) {
        cartService.removeCartItemByBeerId(id);
        return "redirect:/cart";
    }

    @RequestMapping("/cart/clear")
    public String clearCart() {
        cartService.clearCart();
        return "redirect:/cart";
    }
}