show databases;
use college_db;
show tables;
describe courses;
describe enrollments;
describe students;
select * from students;
select first_name , last_name from students;
select first_name , date_of_birth , city ,department , percentage from students;
select * from courses;
select course_name , credits from courses;
select * from enrollments;
select course_id, student_id from enrollments;
select first_name as Name , city as Home_city from students;
select course_name as Course , Credits as Credit_Points from courses;
select student_id as ID , first_name as FirstName from students;

