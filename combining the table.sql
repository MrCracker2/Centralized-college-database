SELECT E.Enrollment_ID, S.First_Name, S.Last_Name, C.Course_Name, E.Semester, E.Grade
FROM ENROLLMENT E
JOIN STUDENT S ON E.Student_ID = S.Student_ID
JOIN COURSE C ON E.Course_ID = C.Course_ID;

SELECT C.Course_Name, F.First_Name AS Faculty_Name, CL.Room_Number, SC.Day, SC.Time_Slot
FROM COURSE C
JOIN FACULTY F ON C.Faculty_ID = F.Faculty_ID
JOIN SCHEDULE SC ON C.Course_ID = SC.Course_ID
JOIN CLASSROOM CL ON SC.Classroom_ID = CL.Classroom_ID;

SELECT EX.Exam_ID, S.First_Name, S.Last_Name, C.Course_Name, EX.Marks, EX.Exam_Date
FROM EXAM EX
JOIN STUDENT S ON EX.Student_ID = S.Student_ID
JOIN COURSE C ON EX.Course_ID = C.Course_ID;
