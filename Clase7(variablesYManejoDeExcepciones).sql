CREATE PROCEDURE AddEmployeeAndUpdateAverageSalary
    @FirstName NVARCHAR(50),
    @LastName NVARCHAR(50),
    @DepartmentID INT,
    @Salary DECIMAL(10, 2),
    @HireDate DATE,
    @NewAverageSalary DECIMAL(10, 2) OUTPUT
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION; -- Inicia la transacci�n

        -- Insertar el nuevo empleado
        INSERT INTO Employees (FirstName, LastName, DepartmentID, Salary, HireDate)
        VALUES (@FirstName, @LastName, @DepartmentID, @Salary, @HireDate);

        -- Calcular el nuevo salario promedio del departamento
        SELECT @NewAverageSalary = AVG(Salary)
        FROM Employees
        WHERE DepartmentID = @DepartmentID;

        COMMIT TRANSACTION; -- Confirma la transacci�n
    END TRY
    BEGIN CATCH
        -- En caso de error, deshacer la transacci�n y mostrar el error
        ROLLBACK TRANSACTION;
        SELECT ERROR_MESSAGE() AS ErrorMessage;
    END CATCH
END;

GO

--CREATE TABLE Employees (
--    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
--    FirstName NVARCHAR(50),
--    LastName NVARCHAR(50),
--    DepartmentID INT,
--    Salary DECIMAL(10, 2),
--    HireDate DATE
--);

GO

DECLARE @NewAvgSalary DECIMAL(10, 2);

EXEC AddEmployeeAndUpdateAverageSalary 
    @FirstName = 'Maria',
    @LastName = 'Lopez',
    @DepartmentID = 2,
    @Salary = 72000.00,
    @HireDate = '2025-01-22',
    @NewAverageSalary = @NewAvgSalary OUTPUT;

-- Ver el nuevo promedio salarial
SELECT @NewAvgSalary AS NewAverageSalary;
