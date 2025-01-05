package com.example.miejska_dzungla.order;

import jakarta.persistence.Id;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepository extends JpaRepository<Order, Long> {
}
