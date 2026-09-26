SELECT 
    s.studentid,
    s.studentname,
    d.departmentname
FROM Student s
INNER JOIN Department d
    ON s.departmentid = d.departmentid;
 SELECT DISTINCT
    s.studentid,
    s.studentname
FROM Student s
INNER JOIN Enrollment e
    ON s.studentid = e.studentid
WHERE e.Grade IS NULL;
