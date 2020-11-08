package pl.coderslab.services;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.coderslab.entity.User;
import pl.coderslab.repository.UserRepository;

@Service
@Slf4j
public class ImplUserService implements UserService {

    private final UserRepository userRepository;

    @Autowired
    public ImplUserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }


    public void addNewUser(User user) {
        User addedUser = userRepository.save(user);
        log.info("New user added " + addedUser.toString());
    }

}
