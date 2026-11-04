-- 1.Display all students admitted in 2021 or 2024.
use college_db;
select * from students; -- used for ref
select * from students where admission_year = 2021 or admission_year = 2024;
-- 2. Display all students who are not in the Electronics or Commerce department.
select * from students where department not in ('electronics','Commerce');
-- 3. Display first_name, department and percentage of students who scored between 60 and 70.
select first_name, department ,percentage from students where percentage between 60 and 70;
-- 4. Display first_name and date_of_birth of students born in the year 2004.
select first_name,date_of_birth from students where date_of_birth like '2004%';
-- 5. Display all students whose first name starts with the letter A.
select * from students where first_name like 'A%';
-- 6. Display all students whose last name ends with "an".
select * from students where last_name like '%an';
-- 7. Display all students whose first name contains "th".
select * from students where first_name like '%th%';
-- 8. Display all students whose first name has exactly 4 letters.
select * from students where first_name like '____';
-- 9. Display all students whose percentage is not yet available.
select * from students where percentage is null;
-- 10. Display first_name and city of Computer Science students whose percentage is not yet available.
select first_name,city from students where department = 'computer science' and percentage is null;
-- 11. Display all enrollments where the marks have not been entered yet.
select * from enrollments where marks is null;
-- 12. Display first_name and last_name of all students sorted by first name from A to Z.
select first_name,last_name  from students order by first_name,last_name;
-- 13. Display first_name, department and percentage of all students sorted by department from A to Z, and within each department by percentage from highest to lowest.
select first_name , department , percentage from students  order by department asc , percentage desc;
-- 14. Display the top 5 students by percentage.
select* from students order by percentage desc limit 5;
-- 15. Display first_name and date_of_birth of the 3 youngest students.
select first_name, date_of_birth  from students order by date_of_birth desc limit 3;
-- 16. Display first_name and percentage of the 3 Commerce students with the lowest percentage, ignoring students whose percentage is not available.
select first_name,percentage from students where department='commerce'and percentage is not null order by percentage  limit 3;
