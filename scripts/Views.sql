CREATE VIEW vw_DepartmentSummary AS
SELECT
    D.DepartmentID,
    D.DepartmentName,
    COUNT(DISTINCT S.StudentID) AS StudentCount,
    COUNT(DISTINCT T.TeacherID) AS TeacherCount
FROM Department D
LEFT JOIN Student S
    ON D.DepartmentID = S.DepartmentID
LEFT JOIN Teacher T
    ON D.DepartmentID = T.DepartmentID
GROUP BY
    D.DepartmentID,
    D.DepartmentName;

    Go

CREATE VIEW vw_TeacherCourseLoad AS
SELECT
    T.TeacherID,
    T.TeacherName,
    COUNT(TC.CourseID) AS CourseCount
FROM Teacher T
LEFT JOIN TeacherCourse TC
    ON T.TeacherID = TC.TeacherID
GROUP BY
    T.TeacherID,
    T.TeacherName;
    go
CREATE VIEW vw_StudentFullReport AS
SELECT
    S.StudentID,
    S.StudentName,
    S.Email,
    D.DepartmentName,
    C.CourseID,
    C.CourseName,
    E.Grade,
    E.EnrollmentDate,
    CASE
        WHEN E.Grade IS NULL THEN 'Pending'
        WHEN E.Grade >= 50 THEN 'Passed'
        ELSE 'Failed'
    END AS Status
FROM Student S
INNER JOIN Department D
    ON S.DepartmentID = D.DepartmentID
INNER JOIN Enrollment E
    ON S.StudentID = E.StudentID
INNER JOIN Course C
    ON E.CourseID = C.CourseID;


