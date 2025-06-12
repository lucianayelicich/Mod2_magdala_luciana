CREATE SCHEMA IF NOT EXISTS ejercicios_mod2_lec5;

USE ejercicios_mod2_lec5;

CREATE TABLE tabla_1 (a INTEGER, b CHAR(10));


-- Ejercicio 1 --

ALTER TABLE tabla_1  -- cambia el nombre de la tabla
RENAME TO tabla_2;

RENAME TABLE tabla_2 TO tabla_3; -- opcion 2 para cambiar el nombre de la tabla

RENAME TABLE tabla_3 TO tabla_2;


-- Ejercicio 2 --

 ALTER TABLE tabla_2
 MODIFY COLUMN a TINYINT NOT NULL; 
 
 SELECT * FROM tabla_2;
 
 
 -- Ejercicio 3 --
 
 ALTER TABLE tabla_2
 CHANGE COLUMN b c CHAR(20);
 
 
 -- Ejercicio 4 --
 
 ALTER TABLE tabla_2
 ADD COLUMN d TIMESTAMP;
 
 
 -- Ejercicio 5 --
 
 ALTER TABLE tabla_2
 DROP COLUMN c; 
 
 
 -- Ejercicio 6 --
 
 -- Hacer una copia exacta de una tabla.
 CREATE TABLE tabla_3 
 AS SELECT * FROM tabla_2;
 
 
 -- Ejercicio 7 --
 
 DROP TABLE IF EXISTS tabla_2;
 
 RENAME TABLE tabla_3 TO tabla_1;
 
 
 -- Ejercicio 8 --
 -- Hay que seguir los pasos de importacion del módulo 2 lección 3.2
 USE tienda; 
 
 CREATE TABLE IF NOT EXISTS customers_mod 
 SELECT * 
 FROM customers;
 
 SELECT * FROM customers;
 
-- Realizar inserción de datos: 
 INSERT INTO customers (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
 VALUES (343, 'Adalab', 'Rodriguez', 'Julia', '672986373', 'Calle Falsa 123','Puerta 42', 'Madrid', 'España', '28000', 'España', 15, 20000000); 
 
