package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.User;
import pl.coderslab.services.UserServiceImpl;

@Slf4j
@Controller
@RequestMapping("/")
public class UserController {

    private final UserServiceImpl userServiceImpl;

    final PasswordEncoder passwordEncoder;

    public UserController(UserServiceImpl userServiceImpl, PasswordEncoder passwordEncoder) {
        this.userServiceImpl = userServiceImpl;
        this.passwordEncoder = passwordEncoder;
    }
//    @RequestMapping("/")
//    public String welcome() {
//        return "index";
//    }

//    @GetMapping("/register")
    @GetMapping({"/register"})
    public String showRegistrationPage(Model model) {
        model.addAttribute("newUser", new User());
        return "register";
    }
//    @PostMapping("/registration")
    @PostMapping({"/register"})
    public String registrationUser(@ModelAttribute User user) {
        userServiceImpl.addNewUser(user);

        return "register";
    }

}
