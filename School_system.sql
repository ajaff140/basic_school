#CREATE DATABASE school_system;
USE school_system;

CREATE TABLE teachers (
	teacher_id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    email VARCHAR(50),
    subject VARCHAR(50),
    salary DECIMAL(10,2)
);

CREATE TABLE students(
	studnet_id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender VARCHAR(10),
    email VARCHAR(50),
    english_grade INT,
    math_grade INT,
    science_grade INT,
    teacher_id INT,
    foreign key (teacher_id) references teachers(teacher_id)
);

INSERT INTO teachers (teacher_id, first_name, last_name, dob, gender, email, subject, salary)
VALUES (1, 'Ethan', 'Johnson', 05/12/1985, 'Male', 'ejohnson@sch.ac.uk', 'English', 45000)

INSERT INTO teachers (teacher_id, first_name, last_name, dob, gender, email, subject, salary)
VALUES (2, 'Olivia', 'Martinez', '1989-06-09', 'Female', 'omartinez@sch.ac.uk', 'Maths', 48000);

INSERT INTO teachers (teacher_id, first_name, last_name, dob, gender, email, subject, salary)
VALUES (3, 'Liam', 'Thompson', '1984-07-25', 'Male', 'lthompson@sch.ac.uk', 'Science', 50000);

SELECT * FROM teachers;

INSERT INTO students (first_name, last_name, dob, gender, email, english_grade, math_grade, science_grade, teacher_id)
VALUES
    ('John', 'Doe', '2002-05-10', 'Male', 'john.doe@example.com', 85, 92, 78, 1),
    ('Jane', 'Smith', '2003-02-15', 'Female', 'jane.smith@example.com', 92, 88, 90, 1),
    ('Michael', 'Johnson', '2002-07-20', 'Male', 'michael.johnson@example.com', 79, 86, 80, 1),
    ('Emily', 'Williams', '2003-09-05', 'Female', 'emily.williams@example.com', 90, 95, 92, 1),
    ('David', 'Brown', '2002-12-01', 'Male', 'david.brown@example.com', 88, 92, 85, 1),
    ('Olivia', 'Jones', '2003-06-25', 'Female', 'olivia.jones@example.com', 95, 90, 94, 1),
    ('Daniel', 'Taylor', '2002-08-18', 'Male', 'daniel.taylor@example.com', 82, 85, 88, 1),
    ('Sophia', 'Miller', '2003-04-12', 'Female', 'sophia.miller@example.com', 93, 94, 92, 1),
    ('Matthew', 'Anderson', '2002-11-30', 'Male', 'matthew.anderson@example.com', 88, 90, 87, 1),
    ('Ava', 'Wilson', '2003-01-05', 'Female', 'ava.wilson@example.com', 91, 92, 88, 1),
    ('Andrew', 'Thomas', '2002-06-15', 'Male', 'andrew.thomas@example.com', 80, 83, 78, 2),
    ('Mia', 'Martinez', '2003-03-20', 'Female', 'mia.martinez@example.com', 89, 90, 92, 2),
    ('James', 'Taylor', '2002-09-25', 'Male', 'james.taylor@example.com', 85, 87, 84, 2),
    ('Charlotte', 'White', '2003-07-10', 'Female', 'charlotte.white@example.com', 91, 94, 90, 2),
    ('Ethan', 'Lee', '2002-12-05', 'Male', 'ethan.lee@example.com', 86, 91, 88, 2),
    ('Amelia', 'Hall', '2003-05-22', 'Female', 'amelia.hall@example.com', 93, 92, 95, 2),
    ('Benjamin', 'Clark', '2002-10-17', 'Male', 'benjamin.clark@example.com', 78, 81, 79, 2),
    ('Abigail', 'Lewis', '2003-08-10', 'Female', 'abigail.lewis@example.com', 90, 92, 88, 2),
    ('Alexander', 'Green', '2002-07-01', 'Male', 'alexander.green@example.com', 82, 85, 83, 2),
    ('Ella', 'Adams', '2003-04-18', 'Female', 'ella.adams@example.com', 92, 93, 90, 2),
    ('Christopher', 'King', '2002-11-12', 'Male', 'christopher.king@example.com', 85, 88, 85, 3),
    ('Sofia', 'Harris', '2003-06-07', 'Female', 'sofia.harris@example.com', 94, 93, 95, 3),
    ('Daniel', 'Turner', '2002-09-20', 'Male', 'daniel.turner@example.com', 81, 83, 80, 3),
    ('Scarlett', 'Baker', '2003-03-05', 'Female', 'scarlett.baker@example.com', 93, 95, 92, 3),
    ('Ryan', 'Gonzalez', '2002-12-10', 'Male', 'ryan.gonzalez@example.com', 87, 90, 88, 3),
    ('Victoria', 'Allen', '2003-05-25', 'Female', 'victoria.allen@example.com', 92, 92, 94, 3),
    ('Samuel', 'Young', '2002-10-20', 'Male', 'samuel.young@example.com', 83, 86, 82, 3),
    ('Grace', 'Scott', '2003-08-15', 'Female', 'grace.scott@example.com', 90, 92, 90, 3),
    ('Jack', 'Wright', '2002-07-05', 'Male', 'jack.wright@example.com', 85, 88, 85, 3),
    ('Lily', 'Walker', '2003-04-20', 'Female', 'lily.walker@example.com', 93, 94, 95, 3);

SELECT * FROM STUDENTS;

SELECT MAX(english_grade) FROM students;
SELECT MIN(english_grade) from students;

SELECT first_name, last_name, english_grade, math_grade, science_grade FROM students; 

SELECT * FROM STUDENTS
WHERE gender = 'male';

SELECT first_name, email
FROM students
UNION
SELECT first_name, email
FROM teachers;

#below is me joining the students who have the same name as there teacher
SELECT *
FROM students
LEFT JOIN teachers ON students.first_name = teachers.first_name;

