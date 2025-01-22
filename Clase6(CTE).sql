USE CursoSQL;
GO

-- Crear la tabla EMPLOYEES
--CREATE TABLE EMPLOYEES (
--    EMPLOYEEID INT PRIMARY KEY,
--    FIRSTNAME VARCHAR(100),
--    LASTNAME VARCHAR(100),
--    DEPARTAMENTID INT,
--    SALARY DECIMAL(10, 2)
--);
--GO

-- Insertar datos en la tabla EMPLOYEES
--INSERT INTO EMPLOYEES (EMPLOYEEID, FIRSTNAME, LASTNAME, DEPARTAMENTID, SALARY)
--VALUES
--    (1, 'Juan', 'P�rez', 1, 75000),
--    (2, 'Mar�a', 'L�pez', 1, 80000),
--    (3, 'Luis', 'G�mez', 2, 60000),
--    (4, 'Ana', 'Ram�rez', 2, 50000),
--    (5, 'Carlos', 'S�nchez', 3, 70000),
--    (6, 'Laura', 'Morales', 3, 90000);
--GO


--CREATE TABLE Departments (
--    DepartmentID INT PRIMARY KEY,
--    DepartmentName VARCHAR(100)
--);

--INSERT INTO Departments (DepartmentID, DepartmentName)
--VALUES
--    (1, 'Recursos Humanos'),
--    (2, 'Finanzas'),
--    (3, 'Tecnolog�a');


WITH AverageSalaries AS (
    SELECT 
        d.DepartmentName, 
        AVG(e.SALARY) AS AvgSalary
    FROM EMPLOYEES e
    JOIN Departments d 
        ON e.DEPARTAMENTID = d.DepartmentID
    GROUP BY d.DepartmentName
)
SELECT 
    DepartmentName, 
    AvgSalary
FROM AverageSalaries
WHERE AvgSalary > 65000;
