package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


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
        return "/";
    }
}