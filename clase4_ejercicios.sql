CREATE SCHEMA mi_ejercicio;
USE mi_ejercicio;

-- ejercicio 1

CREATE TABLE IF NOT EXISTS empleadas (
		id_empleada INT,
        salario INT,
        nombre VARCHAR(50),
        apellido VARCHAR(50),
        pais VARCHAR(50)
);

-- ejercicio 2

CREATE TABLE personas2 (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT CHECK (edad > 16),
    ciudad varchar(255) DEFAULT 'Madrid'
);

-- ejercicio 3

CREATE TABLE IF NOT EXISTS empleadas_1 (
		id_empleada INT AUTO_INCREMENT PRIMARY KEY,
        salario INT,
        nombre VARCHAR(50),
        apellido VARCHAR(50),
        pais VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS empleadas_en_proyectos (
		id_empleada INT,
        id_proyecto INT NOT NULL PRIMARY KEY,
        
		FOREIGN KEY (id_empleada)
			REFERENCES empleadas_1(id_empleada)
             ON DELETE SET NULL
);

-- ejercicio 4

CREATE TABLE customers (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT CHECK (edad > 16),
    ciudad varchar(255) DEFAULT 'Madrid'
);

-- ejercicio 5

CREATE TABLE employess (
    id INT NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT CHECK (edad > 16),
    ciudad varchar(255) DEFAULT 'Madrid'
);

-- ejercicio 6

CREATE TABLE customers_1 (
    id_customer INT NOT NULL PRIMARY KEY,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT CHECK (edad > 16),
    ciudad varchar(255) DEFAULT 'Madrid'
);

CREATE TABLE employess_1 (
    id_customer INT,
    id_employee INT PRIMARY KEY,
    apellido VARCHAR(255) NOT NULL,
    nombre VARCHAR(255),
    edad INT CHECK (edad > 16),
    ciudad varchar(255) DEFAULT 'Madrid'
);
