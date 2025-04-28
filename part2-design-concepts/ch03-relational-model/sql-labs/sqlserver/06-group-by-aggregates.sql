-- 06 - GROUP BY Aggregates (TinyCollege)

-- Number of students by class year (Fr, So, Jr, Sr)
SELECT STU_CLASS, COUNT(*) AS num_students
FROM STUDENT
GROUP BY STU_CLASS;

-- Average GPA by major department
SELECT DEPT_CODE, AVG(STU_GPA) AS avg_gpa
FROM STUDENT
GROUP BY DEPT_CODE;
