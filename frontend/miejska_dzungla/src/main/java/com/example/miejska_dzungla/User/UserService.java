package com.example.miejska_dzungla.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public List<User> getallUsers(){
        return userRepository.findAll();
    }
    public User getUserById(Long id){
        return userRepository.findById(id).orElse(null);
    }
    public User createUser(User user){
        return userRepository.save(user);
    }
    public User updateUser(Long id, User updatedUser) {
        return userRepository.findById(id).map(user -> {
            user.setUsername(updatedUser.getUsername());
            user.setUserPassword(updatedUser.getUserPassword());
            user.setEmailAddress(updatedUser.getEmailAddress());
            user.setAddress(updatedUser.getAddress());
            user.setActive(updatedUser.isActive());
            return userRepository.save(user);
        }).orElse(null);
    }
    public boolean deleteUser(Long id){
        if (userRepository.existsById(id)){
            userRepository.deleteById(id);
            return true;
        }
        return false;
    }

    public boolean usernameExists(String username) {
        return userRepository.existsByUsername(username);
    }

    public boolean emailExists(String email) {
        return userRepository.existsByEmailAddress(email);
    }

    public boolean mobileNumberExists(String mobileNumber) {
        return userRepository.existsByMobileNumber(mobileNumber);
    }


}
