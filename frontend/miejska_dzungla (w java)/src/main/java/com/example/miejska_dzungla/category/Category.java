package com.example.miejska_dzungla.category;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id", nullable = false, unique = true)
    private Long categoryId;

    @Column(name = "category_description")
    private String categoryDescription;

    @Column(name = "category_name", nullable = false)
    private String categoryName;

    @Column(name = "image_url")
    private String imageUrl;



}
