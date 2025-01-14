package com.example.miejska_dzungla.registration;

import com.example.miejska_dzungla.User.User;
import com.example.miejska_dzungla.User.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegistrationController {
    @Autowired
    private UserService userService;

    @PostMapping
    public ResponseEntity<String> registerUser(@RequestBody User user){
        if (userService.usernameExists(user.getUsername())) {
            return ResponseEntity.badRequest().body("Username already exists");
        }
        if (userService.emailExists(user.getEmailAddress())) {
            return ResponseEntity.badRequest().body("Email already registered");
        }
        userService.createUser(user);
        return ResponseEntity.ok("User registered successfully");
    }

}
