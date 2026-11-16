use unknown_academy;
create TABLE EMPLOYEES (
    employee_id INT primary key,
    employee_name VARCHAR(50) not null unique,
    employee_designation VARCHAR(30)not null unique,
    city VARCHAR(30),
    timing VARCHAR(20),
    joining_date DATE
);
SELECT * FROM EMPLOYEES;
INSERT INTO EMPLOYEES
(employee_id, employee_name, employee_designation, city, timing, joining_date)
VALUES
(1, 'ARJUN', 'DATA ANALYST', 'KOZHIKODE', '9 AM - 5 PM', '2026-06-01'),
(2, 'RAHUL', 'MANAGER', 'KOCHI', '10 AM - 6 PM', '2026-06-05'),
(3, 'ANJALI', 'HR EXECUTIVE', 'THRISSUR', '9 AM - 5 PM', '2026-06-10'),
(4, 'AKHIL', 'ACCOUNTANT', 'KANNUR', '9 AM - 6 PM', '2026-06-12'),
(5, 'PRIYA', 'MIS ANALYST', 'TRIVANDRUM', '10 AM - 6 PM', '2026-06-15'),
(6, 'VISHNU', 'TEAM LEADER', 'PALAKKAD', '9 AM - 5 PM', '2026-06-18'),
(7, 'MEERA', 'HR MANAGER', 'MALAPPURAM', '10 AM - 6 PM', '2026-06-20'),
(8, 'NITHIN', 'SQL DEVELOPER', 'KOTTAYAM', '9 AM - 5 PM', '2026-06-22'),
(9, 'SNEHA', 'POWER BI DEVELOPER', 'WAYANAD', '10 AM - 6 PM', '2026-06-25'),
(10, 'ADITHYA', 'BUSINESS ANALYST', 'KOCHI', '9 AM - 5 PM', '2026-06-28');

create table students ( Student_id int primary KEY,
Student_name varchar(50) unique,
Course varchar(30),
City varchar(30) default'Kozhikode',
Course_fee decimal(10,3),
Mode varchar (20) default'Offline',
Joined_on date);
INSERT INTO STUDENTS (STUDENT_ID, STUDENT_NAME,COURSE,CITY,COURSE_FEE,Mode,JOINED_ON)
VALUES 
(1,'ABI SINAN','DATA ANALYTICS','PONNANI',110000.00,'Offline','2026-06-01'),
(2,'SANGEETHA','DATA ANALYTICS','PERINTHALMANNA',110000.00,'Offline','2026-06-01'),
(3,'POOJA','DATA ANALYTICS','VATAKARA',110000.00,'Offline','2026-06-01'),
(4,'DEV','DATA ANALYTICS','KOZHIKODE',110000.00,'Offline','2026-06-01'),
(5,'NANDANA','DATA ANALYTICS','VATAKARA',110000.00,'Offline','2026-06-01'),
(6,'NAJA','DATA ANALYTICS','MALAPPURAM',110000.00,'Online','2026-06-01');
select * from students;

Create table COURSE  (course_id int primary key ,course_name varchar(50)not null,Faculty_name varchar(30)not null,Class_name varchar(30)not null,Course_fee decimal(10,3),Started_date date);
INSERT INTO COURSE 
(course_id, course_name, Faculty_name, Class_name, Course_fee, Started_date)
VALUES
(1, 'DATA ANALYTICS', 'LIBA', 'RADAX6', 110000.000, '2026-06-01'),
(2, 'DATA SCIENCE', 'ANJALI', 'RADAX7', 125000.000, '2026-06-10'),
(3, 'PYTHON PROGRAMMING', 'ARJUN', 'PY101', 45000.000, '2026-07-01'),
(4, 'WEB DEVELOPMENT', 'RAHUL', 'WD102', 55000.000, '2026-07-15'),
(5, 'DIGITAL MARKETING', 'MEERA', 'DM103', 35000.000, '2026-08-01'),
(6, 'JAVA PROGRAMMING', 'VISHNU', 'JAVA104', 50000.000, '2026-08-10'),
(7, 'POWER BI', 'PRIYA', 'PBI105', 30000.000, '2026-08-20'),
(8, 'SQL PROGRAMMING', 'AKHIL', 'SQL106', 25000.000, '2026-09-01'),
(9, 'MACHINE LEARNING', 'NEHA', 'ML107', 75000.000, '2026-09-15'),
(10, 'ADVANCED EXCEL', 'SANJAY', 'EX108', 20000.000, '2026-10-01');

SELECT * FROM COURSE;

INSERT INTO STUDENTS ( STUDENT_ID , STUDENT_NAME,COURSE,CITY) values(7,'MUSAVIR','DATA ANALYTICS','VENGARA');
INSERT INTO STUDENTS ( STUDENT_ID, STUDENT_NAME,COURSE,CITY,COURSE_FEE,JOINED_ON) values(8,'SHAHAR SHABEEN','DATA ANALYTICS','NILAMBUR',110000.00,'2026-06-01');

