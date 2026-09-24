INSERT INTO Department (departmentid, departmentname)
VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Physics'),
(4, 'Information Systems');

INSERT INTO Teacher (teacherid, teachername, email, departmentid)
VALUES
(101, 'Ahmed Ali', 'ahmed@gmail.com', 1),
(102, 'Mona Hassan', 'mona@gmail.com', 1),
(103, 'Omar Samy', 'omar@gmail.com', 2),
(104, 'Sara Adel', 'sara@gmail.com', 3),
(105, 'Nour Khaled', 'nour@gmail.com', 4);

INSERT INTO Student (studentid, studentname, email, departmentid)
VALUES
(201, 'Ali Mohamed', 'ali@gmail.com', 1),
(202, 'Mariam Ahmed', 'mariam@gmail.com', 1),
(203, 'Youssef Omar', 'youssef@gmail.com', 2),
(204, 'Salma Hassan', 'salma@gmail.com', 3),
(205, 'Adam Khaled', 'adam@gmail.com', 4);

INSERT INTO Course (courseid, coursename, departmentid, teacherid)
VALUES
(301, 'Database Systems', 1, 101),
(302, 'Programming', 1, 102),
(303, 'Calculus', 2, 103),
(304, 'Physics 1', 3, 104);

INSERT INTO Enrollment (studentid, courseid, enrollmentdate)
VALUES
(201, 301, '2026-09-01'),
(201, 302, '2026-09-01'),
(202, 301, '2026-09-02'),
(202, 302, '2026-09-02'),
(203, 303, '2026-09-03'),
(204, 304, '2026-09-03');

ALTER TABLE Enrollment
ADD Grade VARCHAR(2);