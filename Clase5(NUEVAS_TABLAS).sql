USE CursoSQL
-- Crear tabla de marcas
--CREATE TABLE MARCAS (
--    ID INTEGER PRIMARY KEY IDENTITY NOT NULL,
--    NOMBRE_MARCA VARCHAR(100) NOT NULL
--);
-- Crear tabla de productos
--CREATE TABLE PRODUCTOS (
--    ID INTEGER PRIMARY KEY IDENTITY NOT NULL,
--    NOMBRE_PRODUCTO VARCHAR(100) NOT NULL,
--    MARCA_ID INTEGER,
--    PRECIO REAL NOT NULL,
--    FOREIGN KEY (MARCA_ID) REFERENCES MARCAS(ID)
--);



-- Insertar marcas
--INSERT INTO MARCAS (NOMBRE_MARCA)
--VALUES
--    ('Dell'),
--    ('Apple'),
--    ('Samsung');

-- Insertar productos con las marcas asignadas
--INSERT INTO PRODUCTOS (NOMBRE_PRODUCTO, MARCA_ID, PRECIO)
--VALUES
--    ('Laptop', 1, 1200.00),      -- Marca Dell
--    ('Smartphone', 2, 800.00),   -- Marca Apple
--    ('Tablet', 1, 400.00);       -- Marca Dell

SELECT * FROM PRODUCTOS
SELECT * FROM MARCAS