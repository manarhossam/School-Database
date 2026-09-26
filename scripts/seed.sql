INSERT INTO Department (DepartmentID, DepartmentName)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Information Systems');

INSERT INTO Teacher
(TeacherID, TeacherName, Email, DepartmentID, SupervisorID)
VALUES
(1, 'Ahmed Hassan', 'ahmed@school.com', 1, NULL),
(6, 'Mona Ali', 'mona@school.com', 2, NULL),
(10, 'Omar Khaled', 'omar@school.com', 3, NULL),
(13, 'Sara Mohamed', 'sara@school.com', 4, NULL);

INSERT INTO Teacher
(TeacherID, TeacherName, Email, DepartmentID, SupervisorID)
VALUES
(2, 'Sara Ahmed', 'sara.ahmed@school.com', 1, 1),
(3, 'Mohamed Ali', 'mohamed.ali@school.com', 1, 1),
(4, 'Nour Samir', 'nour@school.com', 1, 1),
(5, 'Khaled Mostafa', 'khaled@school.com', 1, 1);


INSERT INTO Student
(StudentID, StudentName, Email, DepartmentID)
VALUES
(101, 'Ali Hassan', 'ali.hassan@student.com', 1),
(102, 'Mariam Ahmed', 'mariam.ahmed@student.com', 1),
(103, 'Youssef Mohamed', 'youssef.m@student.com', 1),
(104, 'Salma Khaled', 'salma.k@student.com', 2);

INSERT INTO Course
(CourseID, CourseName, DepartmentID)
VALUES
(201, 'Database Systems', 1),
(202, 'Programming', 1),
(203, 'Data Structures', 1),
(204, 'Artificial Intelligence', 1);

INSERT INTO TeacherCourse
(TeacherID, CourseID)
VALUES

(1, 201),
(1, 202);

INSERT INTO Enrollment
(StudentID, CourseID, Grade, EnrollmentDate)
VALUES

(101, 201, 90, '2026-01-10'),
(101, 202, 85, '2026-01-11'),
(101, 203, NULL, '2026-01-12'),
(102, 201, 95, '2026-01-10');
