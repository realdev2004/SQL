-- Display the total number of students.
use college_db;
show tables;
select* from students;
select count(*) `Total Students`from students;
-- 2. Display the number of students whose percentage is available.
select count(percentage) `Total Percentage`from students where percentage is not null;
-- 3. Display the highest, lowest and average percentage of all students, with the headings Highest, Lowest and Average.
select  max(percentage) as `Highest`,min(percentage)as `Lowest`,avg(percentage)as `Average` from students;
-- 4. Display the total number of courses and the total credits in the courses table.
select count(course_name),count(credits) from courses;
-- 5. Display the highest and lowest marks in the enrollments table.
select  max(marks) as `Highest Marks`,min(marks)as `Lowest Marks` from enrollments;
-- 6. Display the number of students in each department.
SELECT Department, COUNT(*) AS `No Of Students` FROM students GROUP BY department;
-- 7. Display the number of students from each city.
SELECT City, COUNT(*) AS `No of Students` FROM students GROUP BY city;
-- 8. Display the average percentage of each department.
SELECT department, AVG(percentage) AS `Avg Percent`FROM students GROUP BY department;
-- 9. Display the number of students admitted in each year, with the latest year first.
SELECT admission_year, COUNT(*) AS `No of Students` FROM students GROUP BY admission_year ORDER BY admission_year DESC;
-- 10. Display the number of male and female students in each department.
SELECT department, gender, COUNT(*) AS  `No of Students`  FROM students GROUP BY department, gender;
-- 11. Display the average marks of each course in the enrollments table, showing the course ID.
SELECT course_id, AVG(marks) AS `avg marks` FROM enrollments GROUP BY course_id;
