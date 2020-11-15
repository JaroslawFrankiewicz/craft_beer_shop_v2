package pl.coderslab.services;

import org.springframework.stereotype.Service;
import pl.coderslab.entity.User;

@Service
public interface UserService {

    void addNewUser(User user);
    User findByLogin(String login);
}
