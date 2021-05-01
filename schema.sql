DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT NULL,
    PRIMARY KEY (id)
);

INSERT INTO department (name)
VALUES 
('Sales'),
('Medical'),
('Warehouse'),
('Human Resources');

INSERT INTO role (title, salary, department_id)
VALUES
('Junior Associate', 50000, 1),
('Senior Associate', 70000, 2),
('Manager', 100000, 3);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
('Kyle', 'Rather', 3, null),
('Johnny', 'Stew', 3, null),
('Jacob', 'Jacobson', 3, 1),
('Anne', 'House', 1, 2);