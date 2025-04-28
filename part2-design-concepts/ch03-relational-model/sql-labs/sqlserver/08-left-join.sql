-- 08 - LEFT JOIN Example (TinyCollege)

-- List all students and their advisors (professor names)
SELECT s.STU_NUM, s.STU_LNAME, s.STU_FNAME, e.EMP_LNAME AS advisor_lastname
FROM STUDENT s
LEFT JOIN EMPLOYEE e ON s.PROF_NUM = e.EMP_NUM;
