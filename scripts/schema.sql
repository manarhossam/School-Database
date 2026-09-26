CREATE TABLE Department
(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE Teacher
(
    TeacherID INT PRIMARY KEY,
    TeacherName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DepartmentID INT NOT NULL,
    SupervisorID INT NULL,

    CONSTRAINT FK_Teacher_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
        ON DELETE NO ACTION,

    CONSTRAINT FK_Teacher_Supervisor
        FOREIGN KEY (SupervisorID)
        REFERENCES Teacher(TeacherID)
        ON DELETE NO ACTION,

    CONSTRAINT CK_Teacher_NotOwnSupervisor
        CHECK (SupervisorID IS NULL OR SupervisorID <> TeacherID)
);


CREATE TABLE Student
(
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DepartmentID INT NOT NULL,

    CONSTRAINT FK_Student_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
        ON DELETE NO ACTION
);


CREATE TABLE Course
(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DepartmentID INT NOT NULL,

    CONSTRAINT FK_Course_Department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
        ON DELETE NO ACTION
);


CREATE TABLE TeacherCourse
(
    TeacherID INT NOT NULL,
    CourseID INT NOT NULL,

    CONSTRAINT PK_TeacherCourse
        PRIMARY KEY (TeacherID, CourseID),

    CONSTRAINT FK_TeacherCourse_Teacher
        FOREIGN KEY (TeacherID)
        REFERENCES Teacher(TeacherID)
        ON DELETE CASCADE,

    CONSTRAINT FK_TeacherCourse_Course
        FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE
);


CREATE TABLE Enrollment
(
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    Grade DECIMAL(5,2) NULL,
    EnrollmentDate DATE NOT NULL,

    CONSTRAINT PK_Enrollment
        PRIMARY KEY (StudentID, CourseID),

    CONSTRAINT FK_Enrollment_Student
        FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID)
        ON DELETE CASCADE,

    CONSTRAINT FK_Enrollment_Course
        FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
        ON DELETE CASCADE,

    CONSTRAINT CK_Enrollment_Grade
        CHECK (Grade IS NULL OR Grade BETWEEN 0 AND 100),

    CONSTRAINT CK_Enrollment_Date
        CHECK (EnrollmentDate <= CAST(GETDATE() AS DATE))
);