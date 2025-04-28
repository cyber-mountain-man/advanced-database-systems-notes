-- 05 - Basic Aggregate Functions (TinyCollege)

-- Total number of students
SELECT COUNT(*) AS total_students
FROM STUDENT;

-- Average GPA of students
SELECT AVG(STU_GPA) AS avg_gpa
FROM STUDENT;

-- Maximum GPA achieved
SELECT MAX(STU_GPA) AS max_gpa
FROM STUDENT;
