#Write a querytolistthelowest-achievingstudentacrosstheexams. 
#Output their full name along with their total score.

USE foundation_assessment_i;

SELECT students.Forename,results.Mark
FROM results
RIGHT JOIN students
ON students.Student_ID = results.Student_ID
WHERE Mark > 50;