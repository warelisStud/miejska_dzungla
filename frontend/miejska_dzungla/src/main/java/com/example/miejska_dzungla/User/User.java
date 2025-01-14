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

    @Column(nullable = false, length = 15)
    private String username;

    @Column(name = "user_password", length = 20)
    private String UserPassword;

    @Column(name = "mobile_number", length = 15)
    private String mobileNumber;

    @Column(name = "email_address")
    private String emailAddress;

    @Column(name = "is_active")
    private boolean isActive;

    @Column
    private String address;

}