-- nombres que empiezan con la letra J
-- SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE 'J%';

-- nombre que contenga la letra A
-- SELECT * FROM STUDENTS WHERE FIRSTNAME LIKE '%A%';

 --edades que sean mayores a 25
 SELECT * FROM STUDENTS WHERE AGE > 25;

 --edades que sean menores o iguales a 18
 SELECT * FROM STUDENTS WHERE AGE <= 18;

 --apellido que contengan la letra E
 SELECT * FROM STUDENTS WHERE LASTNAME LIKE '%E%';

 --apellido que empieza con la letra C
 SELECT * FROM STUDENTS WHERE LASTNAME LIKE 'C%';

 --estudiantes cuyo nombre no es nulo
 SELECT * FROM STUDENTS WHERE FIRSTNAME IS NOT NULL;

 --estudiantes cuyo nombre es nulo
 SELECT * FROM STUDENTS WHERE FIRSTNAME IS NULL;

 --edades diferentes de 22
 SELECT * FROM STUDENTS WHERE AGE NOT IN (22);
