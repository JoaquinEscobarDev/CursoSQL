USE CursoSQL;

CREATE TABLE STUDENTS (
    STUDENTID INT PRIMARY KEY IDENTITY,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE INT,
    EMAIL VARCHAR(100),
    LOADDATE DATETIME DEFAULT GETDATE(),
    UPDATEDATE DATETIME DEFAULT GETDATE()
);

CREATE TABLE INSTRUCTORS (
    INSTRUCTORID INT PRIMARY KEY IDENTITY,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    AGE INT,
    EMAIL VARCHAR(100),
    LOADDATE DATETIME DEFAULT GETDATE(),
    UPDATEDATE DATETIME DEFAULT GETDATE()
);

CREATE TABLE COURSES (
    COURSEID INT PRIMARY KEY,
    COURSENAME VARCHAR(100),
    DESCRIPTION TEXT,
    INSTRUCTORID INT,
    DURATIONHOURS INT,
    LOADDATE DATETIME DEFAULT GETDATE(),
    UPDATEDATE DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (INSTRUCTORID) REFERENCES INSTRUCTORS(INSTRUCTORID)
);

CREATE TABLE STUDENT_COURSES (
    STUDENTID INT,
    COURSEID INT,
    ENROLLDATE DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (STUDENTID, COURSEID),
    FOREIGN KEY (STUDENTID) REFERENCES STUDENTS(STUDENTID),
    FOREIGN KEY (COURSEID) REFERENCES COURSES(COURSEID)
);
