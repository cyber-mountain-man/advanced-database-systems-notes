-- 03 - ORDER BY Sorting (TinyCollege)

-- List all students ordered by last name ascending
SELECT STU_NUM, STU_LNAME, STU_FNAME
FROM STUDENT
ORDER BY STU_LNAME ASC;

-- List all courses ordered by course description
SELECT CRS_CODE, CRS_DESCRIPTION
FROM COURSE
ORDER BY CRS_DESCRIPTION;
