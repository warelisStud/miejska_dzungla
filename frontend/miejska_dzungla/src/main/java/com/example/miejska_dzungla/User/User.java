package com.example.miejska_dzungla.User;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private Long userId;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(name = "user_password")
    private String UserPassword;

    @Column(name = "mobile_number")
    private String mobileNumber;

    @Column(name = "email_address",unique = true)
    private String emailAddress;

    @Column(name = "is_active")
    private boolean isActive;

    @Column
    private String address;

}