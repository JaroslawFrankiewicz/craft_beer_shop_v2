package pl.coderslab.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.entity.User;
import pl.coderslab.services.CurrentUser;
import pl.coderslab.services.UserService;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.security.Principal;

@Slf4j
@Controller
@RequestMapping("/")
public class UserController {

    private final HttpSession session;

    private final UserService userService;

    public UserController(HttpSession session, UserService userService) {
        this.session = session;
        this.userService = userService;
    }

    //Rejestracja użytkownika

    @GetMapping("/register")
    public String showRegistrationPage(Model model) {
        model.addAttribute("newUser", new User());
        return "register";
    }

//    @PostMapping("/register")
//    public String registerUser(@ModelAttribute("newUser") @Valid User user,
//                               BindingResult bindingResult) {
//
//        User existing = userService.findByLogin(user.getLogin());
//        if (existing != null) {
//            bindingResult.rejectValue("login", "There is already an account registered with that login");
//        }
//
//        if (bindingResult.hasErrors()) {
//            return "register";
//        }
//        userService.addNewUser(user);
//        return "redirect:/admin/index";
//    }

    @PostMapping({"/register"})
    public String registrationUser(@ModelAttribute("newUser") @Validated User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "register";
        }
        userService.addNewUser(user);
        return "redirect:/admin/index";

    }
//    @GetMapping("/login")
//    public String showLogin(Model model) {
//        model.addAttribute("user", new User());
//        return "login";
//    }

    // Logowanie

    @GetMapping("/login")
    public String login(Principal principal, Model model) {
        model.addAttribute("user", new User());
        if (principal != null) {
            return "redirect:/admin/index";
        }
        return "login";
    }


    @PostMapping("/login")
    public String postLogin(@ModelAttribute @Valid User user, BindingResult bindingResult, Model model) {
        if (session.getAttribute("user") != null) {
            return "redirect:/admin/index";
        }
//        User user = new User();
        String login = user.getLogin();
        String password = user.getPassword();

        if (login == null || login.isEmpty() || password == null || password.isEmpty()) {
            model.addAttribute("emptyField", true);
            return "login";
        }

        if (bindingResult.hasErrors()) {
            model.addAttribute("wrongData", true);
            return "login";
        }

        user = userService.findByLogin(login);

        if (user == null || !BCrypt.checkpw(password, user.getPassword())) {
            model.addAttribute("wrongData", true);
        } else {
            session.setAttribute("user", user);
            session.setMaxInactiveInterval(60 * 15);
            model.addAttribute("success", true);
        }
        return "login";
    }

//    @PostMapping("/login")
//    public String login(Model model, CurrentUser currentUser, String login) {
//        User user = currentUser.getUser();
//
//        if (user.equals(userService.findByLogin(login))) {
//            return "admin/beersList";
//        }
//        model.addAttribute("noUser", "User not exist.");
//        return "login";
//    }

//    @PostMapping("/login")
//    public String loginPost(@RequestParam(value = "error", required = false) String error,
//                        @RequestParam(value = "logout", required = false) String logout,
//                        Model model, String login) {
//        User user = userService.findByLogin(login);
//        if (error!=null) {
//            model.addAttribute("error", "Invalid username and password!");
//        }
//
//        if (logout!=null) {
//            model.addAttribute("message", "You have been logout successfully");
//        }
//        return "admin/index";
//    }

//    @PostMapping("/login")
//    public String loginPost(@ModelAttribute User user) {
//        userService.addNewUser(user);
//        return "admin/beersList";
//    }

    @GetMapping("/admin/index")
    public String adminLogin(Model model) {
        model.addAttribute("admin", new User());
        return "admin/index";
    }

    @PostMapping({"/admin/logout"})
    public String logout(@ModelAttribute User user) {
        userService.addNewUser(user);
        return "index";
    }

    @GetMapping("/admin")
    @ResponseBody
    public String admin(@AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        return "Hello " + entityUser.getLogin();
    }
}
