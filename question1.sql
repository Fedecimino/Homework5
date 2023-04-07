#Change the maximum mark of the cyber security exam to 100

USE foundation_assessment_i;

UPDATE exams
SET Exam_name="Cyber Security", Max_Mark= '100'
WHERE EXAM_ID = 2;


SELECT* FROM exams;