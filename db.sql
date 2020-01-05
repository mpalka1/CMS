DROP DATABASE IF EXISTS cms_db;
CREATE DATABASE cms_db;

USE cms_db;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO department (department_name) VALUES ("Sales");


CREATE TABLE role(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NULL,
    department_id INT NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY (id)
);


INSERT INTO employee (first_name, last_name, role_id,manager_id)
VALUES ('mu','shu',3,3);

INSERT INTO employee (first_name, last_name, role_id,manager_id)
VALUES ('mulan','fa',2,1);