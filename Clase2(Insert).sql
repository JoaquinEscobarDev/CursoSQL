USE CursoSQL;

--INSERT INTO dbo.STUDENTS (FIRSTNAME, LASTNAME, AGE, EMAIL)
--VALUES ('John', 'Doe', 25, 'john.doe@example.com');

--INSERT INTO dbo.INSTRUCTORS (FIRSTNAME, LASTNAME, AGE, EMAIL)
--VALUES ('Jane', 'Smith', 40, 'jane.smith@example.com');

--INSERT INTO dbo.COURSES (COURSEID, COURSENAME, DESCRIPTION, INSTRUCTORID, DURATIONHOURS)
--VALUES (1, 'Introduction to SQL', 'Learn the basics of SQL, including queries and database design.', 1, 20);

--INSERT INTO dbo.STUDENT_COURSES (STUDENTID, COURSEID)
--VALUES (1, 1)

-- Insertar en STUDENTS
--INSERT INTO dbo.STUDENTS (FIRSTNAME, LASTNAME, AGE, EMAIL)
--VALUES 
--('Alice', 'Johnson', 22, 'alice.johnson@example.com'),
--('Bob', 'Williams', 28, 'bob.williams@example.com'),
--('Charlie', 'Brown', 23, 'charlie.brown@example.com'),
--('Diana', 'Evans', 30, 'diana.evans@example.com'),
--('Eve', 'Adams', 27, 'eve.adams@example.com');

---- Insertar en INSTRUCTORS
--INSERT INTO dbo.INSTRUCTORS (FIRSTNAME, LASTNAME, AGE, EMAIL)
--VALUES 
--('Michael', 'Taylor', 45, 'michael.taylor@example.com'),
--('Sarah', 'Miller', 38, 'sarah.miller@example.com'),
--('James', 'Anderson', 50, 'james.anderson@example.com'),
--('Emily', 'Wilson', 35, 'emily.wilson@example.com'),
--('David', 'Clark', 42, 'david.clark@example.com');

---- Insertar en INSTRUCTORS
--INSERT INTO dbo.INSTRUCTORS (SPECIALIZATION, SALARY)
--VALUES 
--('Mathematics', 60000),
--('Physics', 65000),
--('Computer Science', 70000),
--('Chemistry', 62000),
--('Biology', 58000);

---- Insertar en COURSES
--INSERT INTO dbo.COURSES (COURSEID, COURSENAME, DESCRIPTION, INSTRUCTORID, DURATIONHOURS)
--VALUES 
--(2, 'Advanced SQL', 'Dive deeper into SQL with advanced techniques and optimization.', 2, 25),
--(3, 'Database Design', 'Learn best practices for designing efficient databases.', 3, 30),
--(4, 'Introduction to Python', 'Learn the basics of Python programming for beginners.', 4, 40),
--(5, 'Web Development Basics', 'Build and design websites using HTML, CSS, and JavaScript.', 5, 50),
--(6, 'Data Analysis with Excel', 'Use Excel for data manipulation and analysis.', 1, 15);

---- Insertar en STUDENT_COURSES
--INSERT INTO dbo.STUDENT_COURSES (STUDENTID, COURSEID)
--VALUES 
--(1, 2), 
--(2, 3), 
--(3, 4), 
--(4, 5), 
--(5, 6);
