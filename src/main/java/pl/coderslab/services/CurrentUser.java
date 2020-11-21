package pl.coderslab.services;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class CurrentUser extends User {

    private final pl.coderslab.entity.User user;

    public CurrentUser(String login, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       pl.coderslab.entity.User user) {
        super(login, password, authorities);
        this.user = user;
    }

    public pl.coderslab.entity.User getUser() {
        return user;
    }
}