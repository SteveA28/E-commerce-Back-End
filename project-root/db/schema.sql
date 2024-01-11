-- Drop existing database if it exists
DROP DATABASE IF EXISTS ecommerce_db;

-- Create a new database
CREATE DATABASE ecommerce_db;

-- Use the new database
USE ecommerce_db;

-- Create the Category table
CREATE TABLE category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(255) NOT NULL
);

-- Create the Product table
CREATE TABLE product (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock INT NOT NULL DEFAULT 10,
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES category(id)
);

-- Create the Tag table
CREATE TABLE tag (
  id INT AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(255) NOT NULL
);

-- Create the ProductTag table
CREATE TABLE productTag (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  tag_id INT,
  FOREIGN KEY (product_id) REFERENCES product(id),
  FOREIGN KEY (tag_id) REFERENCES tag(id)
);
