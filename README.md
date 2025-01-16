# Centralized-college-database
This project implements a **Centralized college database** database schema. The schema consists of various tables that store information about departments, students, faculty, courses, enrollment, exams, classrooms, and schedules. The relationships between these tables represent how different entities in a university interact with each other.

## Tables

### 1. **DEPARTMENT**
Stores information about different departments in the university.
- `Dept_ID`: Unique identifier for each department.
- `Dept_Name`: Name of the department.

### 2. **STUDENT**
Stores information about students enrolled in the university.
- `Student_ID`: Unique identifier for each student.
- `First_Name`: First name of the student.
- `Last_Name`: Last name of the student.
- `Age`: Age of the student.
- `Gender`: Gender of the student (M or F).
- `Dept_ID`: The department the student belongs to (foreign key).

### 3. **FACULTY**
Stores information about faculty members in the university.
- `Faculty_ID`: Unique identifier for each faculty member.
- `First_Name`: First name of the faculty member.
- `Last_Name`: Last name of the faculty member.
- `Qualification`: Qualification of the faculty member.
- `Dept_ID`: The department the faculty member belongs to (foreign key).

### 4. **COURSE**
Stores information about courses offered in the university.
- `Course_ID`: Unique identifier for each course.
- `Course_Name`: Name of the course.
- `Credits`: Number of credits for the course.
- `Dept_ID`: The department offering the course (foreign key).
- `Faculty_ID`: The faculty teaching the course (foreign key).

### 5. **ENROLLMENT**
Stores information about which student is enrolled in which course.
- `Enrollment_ID`: Unique identifier for each enrollment record.
- `Student_ID`: ID of the student enrolled (foreign key).
- `Course_ID`: ID of the course the student is enrolled in (foreign key).
- `Semester`: The semester in which the course is taken.
- `Grade`: The grade received by the student in the course.

### 6. **EXAM**
Stores information about student exams.
- `Exam_ID`: Unique identifier for each exam.
- `Course_ID`: ID of the course the exam is for (foreign key).
- `Student_ID`: ID of the student taking the exam (foreign key).
- `Marks`: Marks obtained by the student.
- `Exam_Date`: Date the exam was held.

### 7. **CLASSROOM**
Stores information about classrooms available in the university.
- `Classroom_ID`: Unique identifier for each classroom.
- `Room_Number`: The room number.
- `Capacity`: The capacity of the classroom.

### 8. **SCHEDULE**
Stores information about the schedule of courses.
- `Schedule_ID`: Unique identifier for each schedule.
- `Course_ID`: ID of the course scheduled (foreign key).
- `Classroom_ID`: ID of the classroom assigned to the course (foreign key).
- `Day`: Day of the week when the course is scheduled.
- `Time_Slot`: Time slot assigned to the course.

## Database Schema Diagram

The schema for the Centralized college database is represented by Image:


## Queries

Several SQL queries are provided to retrieve relevant data from the database, including:

- Retrieving enrollment details for all students, courses, and grades.
- Retrieving the schedule for courses, including classroom and faculty information.
- Retrieving exam details, including student marks and exam dates.
- Retrieving all records from each table to view the data.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/MrCracker2/Centralized-college-database.git
