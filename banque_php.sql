DROP DATABASE IF EXISTS banque_php;

CREATE DATABASE banque_php CHARACTER SET 'utf8';

USE banque_php;

DROP USER 'banquePHP'@'localhost';
FLUSH PRIVILEGES;

CREATE USER 'banquePHP'@'localhost' IDENTIFIED BY 'gripsec';
GRANT ALL ON banque_php.* TO 'banquePHP'@'localhost';

CREATE TABLE Customer (
    id_cust INT UNSIGNED NOT NULL AUTO_INCREMENT,
    cust_first_name VARCHAR(50) NOT NULL,
    cust_last_name VARCHAR(50) NOT NULL,
    cust_birth_date DATE NOT NULL,
    cust_sex CHAR(1),
    cust_street_number int(4) NULL,
    cust_street_name VARCHAR(255) NOT NULL,
    cust_zip_code VARCHAR(7) NOT NULL,
    cust_city VARCHAR(100) NOT NULL,
    cust_email VARCHAR(150) NOT NULL,
    cust_passworld VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_cust)
) ENGINE=INNODB;

INSERT INTO Customer
VALUES 
(1, 'Hagrid', 'Rubeus', '1928-12-06' , 'M', NULL, 'Chanteau de Poudlard', 'B2E', 'Loch Lomond', 'rubeus.hagrid@poudlard.uk', 'Graup');

CREATE TABLE Account (
    id_acc SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    acc_type VARCHAR(50) NOT NULL,
    acc_number INT(25) NOT NULL,
    acc_creation_date DATE NOT NULL,
    acc_balance DECIMAL(12,2) NOT NULL,
    id_cust INT UNSIGNED NOT NULL,
    PRIMARY KEY (id_acc),
    CONSTRAINT fk_cust_account FOREIGN KEY (id_cust) REFERENCES Customer(id_cust)
) ENGINE=INNODB;

INSERT INTO Account
VALUES 
(1, 'Compte courant', 111222333, '1940-07-01' , 42014869, 1),
(2, 'PEL', 35134456835, '1993-05-08' , 952352154, 1),
(3, 'Livret A', 326584215489, '1942-07-01' , 42, 1);

CREATE TABLE Movement (
    id_move INT UNSIGNED NOT NULL AUTO_INCREMENT,
    mov_title VARCHAR(150) NOT NULL,
    mov_amount DECIMAL(14,2) NOT NULL,
    mov_date DATETIME NOT NULL,
    mov_type CHAR(1) NOT NULL,
    id_acc SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (id_move),
    CONSTRAINT fk_account_movement FOREIGN KEY (id_acc) REFERENCES Account(id_acc)
) ENGINE=INNODB;

INSERT INTO Movement
VALUES 
(1, "Dépot d'ouverture", 560000, '1940-07-01 09:23:00','D', 1),
(2, "Retrait", -20, '1940-07-24 11:15:00', 'R', 1),
(3, "Dépot salaire", 523, '1993-06-01 17:00:00', 'D', 1),
(4, "Retrait moto", -14000, '1993-06-13 15:21:00', 'R', 1),
(5, "Dépot salaire", 523, '1993-07-01 17:00:00', 'D', 1),
(6, "Dépot d'ouverture", 420000, '1993-05-08 18:42:00', 'D', 2),
(7, "Dépot", 300, '1993-08-15 13:04:00', 'D', 2),
(8, "Dépot", 4625, '1993-12-08 13:14:00', 'D', 2),
(9, "Dépot d'ouverture", 42, '1942-07-01 09:43:00', 'D', 3);