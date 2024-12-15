CREATE DATABASE IF NOT EXISTS sklep;

USE sklep;

-- Tabela 'Category'
CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    description TEXT,
    name VARCHAR(255),
    image BLOB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabela 'Customer'
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    mobile_number INT,
    email_address VARCHAR(255) UNIQUE,
    address VARCHAR(255)
);

-- Tabela 'User'
CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    password BINARY(64),
    name VARCHAR(255),
    mobile_number INT,
    email_address VARCHAR(255) UNIQUE,
    is_active BOOLEAN DEFAULT TRUE,
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela 'Order'
CREATE TABLE `Order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NULL,
    customer_id INT,
    total_amount FLOAT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Cancelled'),
    shipping_address VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Tabela 'Transaction'
CREATE TABLE Transaction (
    transaction_id INT PRIMARY KEY,  -- Tylko PRIMARY KEY, nie UNIQUE
    customer_id INT,
    order_id INT,
    payment_type VARCHAR(50),
    status ENUM('Pending', 'Completed', 'Failed', 'Cancelled'),
    date_time DATETIME,
    amount FLOAT,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id)
);

-- Tabela 'Product'
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    model VARCHAR(255),
    price DECIMAL(10, 2),
    stock_qty INT DEFAULT 0,
    image BLOB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Tabela 'Product_category'
CREATE TABLE Product_category (
    product_id INT,
    category_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id)
);

-- Tabela 'Order_product'
CREATE TABLE Order_product (
    order_product_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- Tabela 'Returns'
CREATE TABLE Returns (
    return_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    return_date DATE,
    reason TEXT,
    status ENUM('Pending', 'Approved', 'Rejected'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    timestamp INT,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id)
);

-- Tabela 'Shipping'
CREATE TABLE Shipping (
    shipping_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    status ENUM('Pending', 'Shipped', 'Delivered', 'Returned'),
    tracking_number VARCHAR(255),
    shipping_date DATETIME,
    estimated_delivery DATETIME,
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id)
);
