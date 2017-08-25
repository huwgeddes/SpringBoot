package sample.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sample.springboot.model.User;
import sample.springboot.repository.UserRepository;

@Controller
@RequestMapping(path = "/demo")
public class MainController {

    @Autowired
    private UserRepository userRepository;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping(path = "/add")
    public @ResponseBody String addNewUser(@RequestParam String name, @RequestParam String username) {
        User n = new User();
        n.setFirstName(name);
        n.setUsername(username);
        userRepository.save(n);
        return "Saved";
    }

    @GetMapping(path = "/all")
    public @ResponseBody Iterable<User> getAllUsers() {
        Iterable<User> users = userRepository.findAll();
        return users;
    }
}