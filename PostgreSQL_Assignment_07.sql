


-- 1. Database Setup:

CREATE DATABASE university_db;


-- create table employees
CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    frontend_mark INT,
    backend_mark INT,
    status VARCHAR(50)
);


SELECT * FROM students;



-- create course table  
CREATE TABLE courses(
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL
);
-- mistake spelling courses for drop course
DROP TABLE course


SELECT * FROM courses;

-- create enrollment table 
CREATE TABLE enrollment(
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

SELECT * FROM enrollment;

-- Query 1 Start --

-- INSERT Many student data 
INSERT INTO students (student_id, student_name, age, email, frontend_mark, backend_mark, status) VALUES
(1, 'Sameer', 21, 'sameer@example.com', 48, 60, NULL),
(2, 'Zoya', 23, 'zoya@example.com', 52, 58, NULL),
(3, 'Nabil', 22, 'nabil@example.com', 37, 46, NULL),
(4, 'Rafi', 24, 'rafi@example.com', 41, 40, NULL),
(5, 'Sophia', 22, 'sophia@example.com', 50, 52, NULL),
(6, 'Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


-- insert a new student record 

INSERT into students VALUES(8,'Ashiqe',28,'ashiqe@gmail.com',50,49,NULL);


-- Query 1 End --




-- Query 2 Start --

-- Query 2 End --


-- Query 3 Start --

-- Query 3 End --


-- Query 4 Start --

-- Query 4 End --



-- Query 5 Start --

-- Query 5 End --
