-- 11 - Real World SQL Questions (TinyCollegeDB)

-- 🟢 Co-worker: 
-- "Hey, can you quickly pull me a list of all students with their student ID, first name, last name, and what major they're in?"

SELECT STU_NUM, STU_LNAME, STU_FNAME, DEPT_CODE
FROM STUDENT;
GO

-- 🟢 Supervisor:
-- "Can you send me a report of all professors who have a Ph.D. degree?"

SELECT EMP_NUM, EMP_LNAME, EMP_FNAME
FROM EMPLOYEE
WHERE EMP_NUM IN (
    SELECT EMP_NUM
    FROM PROFESSOR
    WHERE PROF_HIGH_DEGREE = 'Ph.D.'
);
GO

-- 🟢 Subordinate:
-- "I'm entering classroom assignments. Can you find all classes scheduled in rooms inside the KLR building?"

SELECT CLASS_CODE, CLASS_ROOM, CLASS_TIME
FROM CLASS
WHERE CLASS_ROOM LIKE 'KLR%';
GO

-- 🟡 Supervisor:
-- "What's the average GPA of all students majoring in Computer Information Systems (CIS)?"

SELECT AVG(STU_GPA) AS avg_gpa_cis
FROM STUDENT
WHERE DEPT_CODE = 'CIS';
GO

-- 🟡 Co-worker:
-- "I need to know which students have a GPA above the overall student body average. Can you find them?"

SELECT STU_NUM, STU_LNAME, STU_FNAME, STU_GPA
FROM STUDENT
WHERE STU_GPA > (SELECT AVG(STU_GPA) FROM STUDENT);
GO

-- 🟡 Team Lead:
-- "Can you give me the number of students majoring in each department?"

SELECT DEPT_CODE, COUNT(*) AS num_students
FROM STUDENT
GROUP BY DEPT_CODE;
GO

-- 🟠 Co-worker:
-- "I need a list of each student along with their advisor's last name. It's OK if the advisor is missing."

SELECT s.STU_NUM, s.STU_LNAME, s.STU_FNAME, e.EMP_LNAME AS advisor_lastname
FROM STUDENT s
LEFT JOIN EMPLOYEE e ON s.PROF_NUM = e.EMP_NUM;
GO

-- 🟠 Supervisor:
-- "Do we have any courses offered in multiple sections?"

SELECT CRS_CODE, COUNT(*) AS num_sections
FROM CLASS
GROUP BY CRS_CODE
HAVING COUNT(*) > 1;
GO

-- 🔥 Senior DBA:
-- "Could you find all students who are enrolled in a class taught by a professor with the last name 'Smith'?"

SELECT DISTINCT s.STU_NUM, s.STU_LNAME, s.STU_FNAME
FROM STUDENT s
INNER JOIN ENROLL en ON s.STU_NUM = en.STU_NUM
INNER JOIN CLASS c ON en.CLASS_CODE = c.CLASS_CODE
INNER JOIN PROFESSOR p ON c.PROF_NUM = p.EMP_NUM
INNER JOIN EMPLOYEE emp ON p.EMP_NUM = emp.EMP_NUM
WHERE emp.EMP_LNAME = 'Smith';
GO

-- 🔥 Manager:
-- "We need a performance report: can you give me the average GPA of students per department, sorted highest to lowest?"

SELECT DEPT_CODE, AVG(STU_GPA) AS avg_gpa
FROM STUDENT
GROUP BY DEPT_CODE
ORDER BY avg_gpa DESC;
GO

