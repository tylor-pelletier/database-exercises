SELECT user, host FROM mysql.user;

SHOW DATABASES;

-- Migration: A program that creates a database structure.

CREATE DATABASE IF NOT EXISTS tables_lesson_db;

USE tables_lesson_db;

DROP TABLE IF EXISTS flights;

CREATE TABLE flights(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  destination CHAR(3) NOT NULL,
  departs_from CHAR(3) NOT NULL,
  price DOUBLE DEFAULT 0.0,
  num_tickets_sold INT,
  description TEXT,
  departs_at DATETIME NOT NULL, -- 2018-08-10 14:05:55
  arrives_at DATETIME NOT NULL,
  PRIMARY KEY (id)
);

SHOW TABLES;

SHOW CREATE TABLE flights\G;