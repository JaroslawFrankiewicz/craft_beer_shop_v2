package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Slf4j
@Controller
public class HomeController {

    @GetMapping("/")
    public String startsPage (){
        return "index";
    }

    @GetMapping("/about")
    public String aboutPage (){
        return "about";
    }

    @GetMapping("/contact")
    public String contactPage(){
        return "contact";
    }


//    @GetMapping("/profile")
//    public String profile(Model model, Principal principal) {
//
//        User user = userService.findByUsername(principal.getName());
//        model.addAttribute("user", user);
//        model.addAttribute("cartList", user.getCart());
//
//        return "profile";
//    }

}
