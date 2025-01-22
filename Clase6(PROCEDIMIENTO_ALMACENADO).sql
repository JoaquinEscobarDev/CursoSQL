CREATE PROCEDURE spInsertEmployee
@FirstName NVARCHAR(50),
@LastName NVARCHAR(50),
@DepartamentId INT,
@Salary DECIMAL(10, 2)
 
 AS
 BEGIN
	INSERT INTO Employees (FirstName, LastName, DepartamentId, Salary)
	VALUES	(@FirstName, @LastName, @DepartamentId, @Salary);
END;

EXEC spInsertEmployee 'Maria', 'Lopez', 2, 72000.00;


