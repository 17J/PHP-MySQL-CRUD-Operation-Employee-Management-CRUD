CREATE DATABASE IF NOT EXISTS demo;
CREATE USER 'root'@'db' IDENTIFIED BY 'root@@123';
GRANT ALL PRIVILEGES ON demo.* TO 'root'@'db';

USE demo;

CREATE TABLE IF NOT EXISTS demo.employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    phone TEXT,
    address VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO employee (name, email, phone, address) VALUES ('John Doe', 'johndoe@example.com', '123-456-7890', '123 Main Street');
INSERT INTO employee (name, email, phone, address) VALUES ('Jane Smith', 'janesmith@example.com', '987-654-3210', '456 Elm Street');
