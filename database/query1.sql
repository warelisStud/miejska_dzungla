create database sklep;

CREATE TABLE users (
	user_id BIGINT auto_increment primary key,
    username varchar(15) not null unique,
    user_password varchar(20) not null,
    mobile_number varchar(255) unique,
    email_address varchar(255) unique,
    address varchar(255) not null,
    is_active boolean not null
    );
    
CREATE TABLE orders (
    order_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    total_amount DECIMAL(10, 2) NOT NULL,
    order_status VARCHAR(50) NOT NULL,
    shipping_address varchar(255) not null,
    user_id BIGINT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE categories (
    category_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    category_description TEXT,
    category_name VARCHAR(255) NOT NULL,
    image_url VARCHAR(255)
);

CREATE TABLE products (
    product_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    product_description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_qty INT NOT NULL,
    image_url VARCHAR(255),
    category_id BIGINT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);