-- 09 - Subquery Basics (TinyCollege)

-- List students who have a GPA above the overall average
SELECT STU_NUM, STU_LNAME, STU_FNAME, STU_GPA
FROM STUDENT
WHERE STU_GPA > (SELECT AVG(STU_GPA) FROM STUDENT);
