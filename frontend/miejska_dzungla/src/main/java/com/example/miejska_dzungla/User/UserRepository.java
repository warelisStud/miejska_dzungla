package com.example.miejska_dzungla.User;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    boolean existsByUsername(String username);
    boolean existsByEmailAddress(String emailAddress);
    boolean existsByMobileNumber(String mobileNumber);
    User findByUsername(String username);
}
