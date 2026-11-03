-- Display the different cities the students come from.
use college_db;
select distinct city from students;
-- 2. Display the different departments.
select distinct department from courses;
-- 3. Display the different combinations of department and admission_year.
select distinct department , admission_year from students;
-- 4. Display all students from Kochi.
select * from students where city = "kochi";
-- 5. Display first_name, last_name and percentage of students who scored above 80.
select first_name, last_name , percentage from students where percentage >80;
-- 6. Display all students who are not in the Commerce department.
select * from students where department <> "Commerce";
-- 7. Display all students admitted in 2023 or later.
select * from students where admission_year >=2023;
-- 8. Display all female students in Computer Science.
select * from students where gender = "F" and department="Computer Science";
-- 9. Display all students in Electronics or Mechanical.
select * from students where department = "Electronics" or department = "Mechanical";
-- 10. Display all students from Kochi, Thrissur or Kozhikode.
select * from students where city in ("Kochi","Thrissur","Kozhikode");
-- 11. Display all students who are not from Chennai, Bengaluru or Trivandrum.
select * from students where city not in ("Chennai","Bengaluru","Trivandrum");
-- 12. Display first_name, department and percentage of students who scored 70 or more
-- and 85 or less.
select first_name , department, percentage from students where percentage between 70 and 80;
-- 13. Display first_name and date_of_birth of students born on or after 1 January 2004
-- and on or before 30 June 2004.
select first_name from students where date_of_birth between '2004-01-01'and'2004-07-01';
-- 14. Display first_name, department and percentage of Computer Science or Electronics
-- students who scored above 85.
select first_name,department,percentage from students where department = "Computer Science"and percentage >85 or department = "Electronics" and percentage >85;
-- 15. Display all courses that have 4 credits.
select* from courses where credits = 4;
-- 16. Display all enrollments of course 101 where the marks are 80 or more.
select* from enrollments where course_id = 101 and marks >80;