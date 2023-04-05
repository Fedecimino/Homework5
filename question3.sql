# Allstudentswhofailedanexam(receivedamarkoflessthan40)havenow chosen to leave this program.
# Remove them from the students table.

DELETE FROM Results
WHERE Mark <40;

SELECT students.Forename,results.Mark
FROM results
RIGHT JOIN students
ON students.Student_ID = results.Student_ID