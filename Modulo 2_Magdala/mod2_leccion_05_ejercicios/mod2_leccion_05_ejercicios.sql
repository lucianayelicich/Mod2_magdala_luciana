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
 
 SELECT * FROM employees;
 
-- Realizar inserción de datos:
/* 
Da un error que hace referencia a que 'sales_rep_employee_number' es una FK que hace referencia en la tabla 'employees' a la columna 'employees_number'
por lo tanto, la solución es poner un número de empleado ('sales_rep_employee_number') que se encuentre en la tabla de 'employees' en la columna 'employees_number'. 
 */
 INSERT INTO customers (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
 VALUES (343, 'Adalab', 'Rodriguez', 'Julia', '672986373', 'Calle Falsa 123','Puerta 42', 'Madrid', 'España', '28000', 'España', 1504, 20000000); 
 
 -- No se puede poner como customer_number = 344 porque 'customer_number' es una PK y customer_number = 344 ya existe. 
 -- Por lo anterior, pongo otro número distinto para customer_number que no existe. 
 INSERT INTO customers (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, city, postal_code, country, sales_rep_employee_number, credit_limit)
 VALUES (345, 'La pegatina After', 'Santiago', 'Maricarmen', '00000000', 'Travesia del Rave', 'Palma de Mallorca','07005', 'España', 1002, 45673453);
 
 -- Hago esta prueba para ver si puedo poner todas las col y las que son null indicarlo. 
  INSERT INTO customers (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
  VALUES (346, 'Adalab', 'Perez', 'Maria', '600200300', 'Calle Falsa 500', NULL, 'Sevilla', NULL, '14013', 'España', 1504, 50000000); 
 
-- Introducir ahora 5 filas: 
/*
Indíca el ejercicio que se dejaran 3 de las 5 filas con 'contact_first_name' vacío, pero no se puede ya que es una columna que no puede ser nula (NOT NULL)
*/
  INSERT INTO customers (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit)
  VALUES 
  ( 497 , 'Adalab', 'Perez', 'Rosa', '600444444', 'Avenida Falsa 5', 'Puerta 5C', 'Cadiz', 'España', '41704', 'España', 1323, 89600.99), 
  ( 498 , 'Adalab', 'Nimo', 'Elena', '656987321', 'Calle Fantasia 12', NULL, 'Málaga', 'España', '07005', 'España', 1611, 95000.50), 
  ( 499 , 'Adalab', 'Dias', 'Magdalena', '759153426', 'Avenida de España', 'Puerta 23', 'Badajoz', 'España', '12503', 'España', 1401, 21725),
  ( 500 , 'Adalab', 'Rodriguez', 'Isabel', '666999333', 'Pasaje de los Sueños', 'Vivienda 23', 'Huelva', 'España', '42357', 'España', 1216, 55000),
  ( 501 , 'Adalab', 'Murillo', 'Alejandra', '633159753', 'Calle Paraiso', 'Puerta 99', 'Córdoba', 'España', '15987', 'España', 1702, 74985.75); 
  
  -- No hace falta poner el nombre de las columnas cuando vamos a rellenar los datos de todas las columnas. 
   INSERT INTO customers 
   VALUES (502, 'Adalab', 'Rodriguez', 'Julia', '625741963', 'Calle Falsa 123','Puerta 45', 'Madrid', 'España', '28000', 'España', 1504, 25000);
   
   
   -- Actualizar los datos de customer_name = 'La pegatina After'
   SELECT *
   FROM customers
   WHERE customer_name = 'La pegatina After';
   
   SELECT * FROM employees;
   
   UPDATE customers
   SET 
   address_line1 = 'Polígono Industrial de Son Castelló',
   address_line2 = 'Nave 92', 
   city = 'Palma de Mallorca', 
   state = 'España', 
   postal_code = '28123', 
   country = 'España', 
   sales_rep_employee_number = 1504, 
   credit_limit = 5000000
   WHERE customer_number = 345;
   
   -- Vamos a "romper" la tabla con la que estamos trabajando, para ello primero vamos a hacer una copia con nombre 'customers_destroy'
   CREATE TABLE IF NOT EXISTS customers_destroy 
   SELECT * 
   FROM customers;
   
   SELECT * 
   FROM customers_destroy;
   
   UPDATE customers_destroy
   SET 
   address_line1 = 'Vamos',
   address_line2 = 'a', 
   postal_code = 'fastidiar', 
   country = 'la tabla :)';
   
   
   -- Actualizar datos de la tabla 'customers_mod' para que las 10 primeras empresas sean gestionadas por la representante de ventas numero 2. 
   -- Como el número 2 no existe, lo voy a cambiar por el 1088.alter
   
   SELECT * FROM customers_mod;
   
   SELECT *
   FROM customers_mod
   WHERE customer_number <= 131;
   
   UPDATE customers_mod
   SET sales_rep_employee_number = 1088
   WHERE customer_number <= 131;
   
   
   -- Eliminar de la columna contact_first_name aquellos que sean nulos. 
   -- Lo anterior es lo que pide el ejercicio pero contact_first_name nunca puede ser nulo, por lo que, para practicar voy a hacer lo mismo 
   -- pero en la columna sales_rep_employee_number. 
   
   DELETE FROM customers_mod
   WHERE sales_rep_employee_number IS NULL; 
   
   SELECT * FROM customers_mod; 
 