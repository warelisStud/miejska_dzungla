package com.example.miejska_dzungla.product;

import com.example.miejska_dzungla.user.User;
import com.example.miejska_dzungla.user.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductService {
    @Autowired
    private ProductRepository productRepository;

    public List<Product> getallProducts(){
        return productRepository.findAll();
    }
    public Product getProductById(Long id){
        return productRepository.findById(id).orElse(null);
    }
    public Product createProduct(Product product){
        return productRepository.save(product);
    }
    public Product updateProduct(Long id, Product updatedProduct) {
        Optional<Product> existingProductOpt = productRepository.findById(id);

        if (existingProductOpt.isPresent()) {
            Product existingProduct = existingProductOpt.get();
            existingProduct.setProductName(updatedProduct.getProductName());
            existingProduct.setProductDescription(updatedProduct.getProductDescription());
            existingProduct.setPrice(updatedProduct.getPrice());
            existingProduct.setStockQty(updatedProduct.getStockQty());
            existingProduct.setImageUrl(updatedProduct.getImageUrl());
            existingProduct.setCategory(updatedProduct.getCategory());
            return productRepository.save(existingProduct);
        } else {
            return null;
        }
    }
    public boolean deleteProduct(Long id){
        if (productRepository.existsById(id)){
            productRepository.deleteById(id);
            return true;
        }
        return false;
    }


}
