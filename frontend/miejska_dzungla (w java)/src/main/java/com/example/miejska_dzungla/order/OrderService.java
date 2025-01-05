package com.example.miejska_dzungla.order;

import com.example.miejska_dzungla.user.User;
import com.example.miejska_dzungla.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private UserRepository userRepository;

    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }

    public Order getOrderById(Long id) {
        return orderRepository.findById(id).orElse(null);
    }

    public Order createOrder(Order order, Long userId) {
        Optional<User> userOpt = userRepository.findById(userId);
        if (userOpt.isPresent()) {
            order.setUser(userOpt.get());
            return orderRepository.save(order);
        } else {
            throw new IllegalArgumentException("User not found with ID: " + userId);
        }
    }

    public Order updateOrder(Long id, Order updatedOrder) {
        Optional<Order> existingOrderOpt = orderRepository.findById(id);
        if (existingOrderOpt.isPresent()) {
            Order existingOrder = existingOrderOpt.get();
            existingOrder.setTotalAmount(updatedOrder.getTotalAmount());
            existingOrder.setOrderStatus(updatedOrder.getOrderStatus());
            existingOrder.setShippingAddress(updatedOrder.getShippingAddress());
            return orderRepository.save(existingOrder);
        } else {
            return null;
        }
    }

    public boolean deleteOrder(Long id) {
        if (orderRepository.existsById(id)) {
            orderRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
