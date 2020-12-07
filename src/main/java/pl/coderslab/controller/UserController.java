package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.services.CurrentUser;
import pl.coderslab.services.UserService;

import javax.validation.Valid;

@Slf4j
@Controller
@RequestMapping("/")
public class UserController {


    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

//    @Autowired
//    private OAuth2ClientContext clientContext;

    public UserController(UserService userService, PasswordEncoder passwordEncoder) {
        this.userService = userService;

        this.passwordEncoder = passwordEncoder;
    }


    @GetMapping({"/register"})
    public String showRegistrationPage(Model model) {
        model.addAttribute("newUser", new User());
        return "register";
    }

    @PostMapping({"/register"})
    public String registrationUser(@ModelAttribute("newUser") @Validated User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "register";
        }
        userService.addNewUser(user);
        return "redirect:login";

    }
    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String loginPost() {
        return "beersList";
    }

    @GetMapping({"/admin/index"})
    public String adminLogin(Model model) {
        model.addAttribute("admin", new User());
        return "admin/index";
    }

    @PostMapping({"/admin/logout"})
    public String logout(@ModelAttribute User user) {
        userService.addNewUser(user);
        return "/";
    }

    @GetMapping("/admin")
    @ResponseBody
    public String admin(@AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        return "Hello " + entityUser.getLogin();
    }
}
