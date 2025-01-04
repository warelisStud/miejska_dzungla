CREATE TABLE users (
	user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    usermane VARCHAR(15) NOT NULL UNIQUE,
    user_password VARCHAR(20) NOT NULL,
    mobile_number VARCHAR(15) UNIQUE,
    email_address VARCHAR(255) UNIQUE,
    address VARCHAR(255) UNIQUE,
    is_active BOOLEAN NOT NULL
    );
    