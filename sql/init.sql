CREATE DATABASE app_db;
USE app_db;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO users (name) VALUES ('Admin');
INSERT INTO users (name) VALUES ('User');

