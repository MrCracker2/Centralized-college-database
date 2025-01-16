-- Create the DEPARTMENT table
CREATE TABLE DEPARTMENT (
    Dept_ID INT PRIMARY KEY,         -- Primary Key
    Dept_Name VARCHAR(100) NOT NULL  -- Department Name
);

-- Create the STUDENT table
CREATE TABLE STUDENT (
    Student_ID INT PRIMARY KEY,           -- Primary Key
    First_Name VARCHAR(50) NOT NULL,      -- First Name
    Last_Name VARCHAR(50) NOT NULL,       -- Last Name
    Age INT,                              -- Age
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),  -- Gender with constraint
    Dept_ID INT,                          -- Foreign Key to DEPARTMENT
    FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT(Dept_ID)
);

-- Create the FACULTY table
CREATE TABLE FACULTY (
    Faculty_ID INT PRIMARY KEY,           -- Primary Key
    First_Name VARCHAR(50) NOT NULL,      -- First Name
    Last_Name VARCHAR(50) NOT NULL,       -- Last Name
    Qualification VARCHAR(100),           -- Qualification
    Dept_ID INT,                          -- Foreign Key to DEPARTMENT
    FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT(Dept_ID)
);

-- Create the COURSE table
CREATE TABLE COURSE (
    Course_ID INT PRIMARY KEY,            -- Primary Key
    Course_Name VARCHAR(100) NOT NULL,    -- Course Name
    Credits INT,                          -- Number of credits
    Dept_ID INT,                          -- Foreign Key to DEPARTMENT
    Faculty_ID INT,                       -- Foreign Key to FACULTY
    FOREIGN KEY (Dept_ID) REFERENCES DEPARTMENT(Dept_ID),
    FOREIGN KEY (Faculty_ID) REFERENCES FACULTY(Faculty_ID)
);

-- Create the ENROLLMENT table
CREATE TABLE ENROLLMENT (
    Enrollment_ID INT PRIMARY KEY,        -- Primary Key
    Student_ID INT,                       -- Foreign Key to STUDENT
    Course_ID INT,                        -- Foreign Key to COURSE
    Semester VARCHAR(10),                 -- Semester information
    Grade CHAR(1),                        -- Grade
    FOREIGN KEY (Student_ID) REFERENCES STUDENT(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID)
);

-- Create the EXAM table
CREATE TABLE EXAM (
    Exam_ID INT PRIMARY KEY,              -- Primary Key
    Course_ID INT,                        -- Foreign Key to COURSE
    Student_ID INT,                       -- Foreign Key to STUDENT
    Marks INT,                            -- Marks obtained
    Exam_Date DATE,                       -- Date of Exam
    FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES STUDENT(Student_ID)
);

-- Create the CLASSROOM table
CREATE TABLE CLASSROOM (
    Classroom_ID INT PRIMARY KEY,         -- Primary Key
    Room_Number VARCHAR(10) NOT NULL,    -- Room number
    Capacity INT                         -- Capacity of the classroom
);

-- Create the SCHEDULE table
CREATE TABLE SCHEDULE (
    Schedule_ID INT PRIMARY KEY,          -- Primary Key
    Course_ID INT,                        -- Foreign Key to COURSE
    Classroom_ID INT,                     -- Foreign Key to CLASSROOM
    Day VARCHAR(10),                      -- Day of the week
    Time_Slot TIME,                       -- Time slot for the class
    FOREIGN KEY (Course_ID) REFERENCES COURSE(Course_ID),
    FOREIGN KEY (Classroom_ID) REFERENCES CLASSROOM(Classroom_ID)
);
select * from SCHEDULE;
select *from CLASSROOM;
