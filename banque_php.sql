DROP DATABASE IF EXISTS banque_php;
SHOW WARNINGS;

CREATE DATABASE banque_php CHARACTER SET 'utf8';

USE banque_php

CREATE TABLE User (
    id_user INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_first_name VARCHAR(50) NOT NULL,
    user_last_name VARCHAR(50) NOT NULL,
    user_birth_date DATE NOT NULL,
    user_sex CHAR(1),
    user_street_number int(4) NULL,
    user_street_name VARCHAR(255) NOT NULL,
    user_zip_code VARCHAR(7) NOT NULL,
    user_city VARCHAR(100) NOT NULL,
    user_email VARCHAR(150) NOT NULL,
    user_login VARCHAR(12) NOT NULL,
    user_passworld VARCHAR(50) NOT NULL,
    PRIMARY KEY (id_user)
)
ENGINE=INNODB;

INSERT INTO User
VALUES 
('Hagrid', 'Rubeus', '1928-12-06' , 'M', NULL, 'Chanteau de Poudlard', 'B2E', 'Loch Lomond', 'rubeus.hagrid@poudlard.uk', 'Hagger', 'Graup');

CREATE TABLE Account (
    id_acc SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    acc_type VARCHAR(50) NOT NULL,
    acc_number INT(12) NOT NULL,
    acc_creation_date DATE NOT NULL,
    acc_balance DECIMAL(12,2) NOT NULL,
    id_user FOREIGNKEY UNSIGNED NOT NULL,
    PRIMARY KEY (id_acc)
)
ENGINE=INNODB;

INSERT INTO Account
VALUES 
('Compte courant', 111222333, '1940-07-01' , 42014869, 1),
('PEL', 35134456835, '1993-05-08' , 952352154, 1),
('Livret A', 326584215489, '1942-07-01' , 42, 1);

CREATE TABLE Movement (
    id_move INT UNSIGNED NOT NULL AUTO_INCREMENT,
    mov_title VARCHAR(150)) NOT NULL,
    mov_amount DECIMAL(12,2) NOT NULL,
    mov_date DATETIME NOT NULL,
    mov_type CHAR(1) NOT NULL,
    id_acc FOREIGNKEY UNSIGNED NOT NULL,
    PRIMARY KEY (id_move)
)
ENGINE=INNODB;

INSERT INTO Account
VALUES 
("Dépot d'ouverture", 560000, '1940-07-01 09:23:00','D', 1),
("Retrait", -20, '1940-07-24 11:15:00', 'R', 1),
("Dépot salaire", 523, '1993-06-01 17:00:00', 'D', 1),
("Retrait moto", -14000, '1993-06-13 15:21:00', 'R', 1),
("Dépot salaire", 523, '1993-07-01 17:00:00', 'D', 1),
("Dépot d'ouverture", 420000, '1993-05-08 18:42:00', 'D', 2),
("Dépot", 300, '1993-08-15 13:04:00', 'D', 2),
("Dépot", 4625, '1993-12-08 13:14:00', 'D', 2),
("Dépot d'ouverture", 42, '1942-07-01 09:43:00', 'D', 3);