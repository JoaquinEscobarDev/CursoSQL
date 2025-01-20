--nombres que empiezan con la letra J
SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE 'J%';

--nombre que contenga la letra A
SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE '%A%';

--edades que sean 20
SELECT * FROM STUDENTS WHERE AGE = 22;

--edades que esten entre 20 y 25
SELECT * FROM STUDENTS WHERE AGE BETWEEN 20 AND 25;
SELECT * FROM STUDENTS WHERE AGE >= 20 AND AGE <= 25;

--apellido que contengan la O
SELECT * FROM STUDENTS WHERE LASTNAME LIKE '%O%';

--apellido que empieza con la B
SELECT * FROM STUDENTS WHERE LASTNAME LIKE '%B%';