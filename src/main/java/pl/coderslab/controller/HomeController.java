package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.services.UserService;

import java.security.Principal;
import java.util.Collections;
import java.util.List;


@Slf4j
@Controller
public class HomeController {

    private UserService userService;

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

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false) String error,
                        @RequestParam(value = "logout", required = false) String logout,
                        Model model) {
        if (error!=null) {
            model.addAttribute("error", "Invalid username and password!");
        }

        if (logout!=null) {
            model.addAttribute("msg", "You have been logout successfully");
        }
        return "/admin/index";
    }

//    @GetMapping("/profile")
//    public String profile(Model model, Principal principal) {
//
//        User user = userService.findByLogin(principal.getName());
//        model.addAttribute("user", user);
//        model.addAttribute("cartList", user.getCart());
//
//        return "profile";
//    }

}
