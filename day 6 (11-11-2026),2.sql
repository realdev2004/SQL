create database DR_CLINIC;
use dr_clinic;
create table DOCTORS(
doc_id int primary key,
do_name varchar(30) not null,
Speciality Varchar (40) not null);
 describe doctors;
 select * from doctors;
 INSERT INTO DOCTORS (doc_id, do_name, Speciality)
VALUES
(1, 'DR ARUN KUMAR', 'CARDIOLOGY'),
(2, 'DR PRIYA MENON', 'DERMATOLOGY'),
(3, 'DR RAHUL NAIR', 'ORTHOPEDICS'),
(4, 'DR ANJALI DAS', 'PEDIATRICS'),
(5, 'DR VISHNU RAJ', 'NEUROLOGY'),
(6, 'DR MEERA KRISHNAN', 'GYNECOLOGY'),
(7, 'DR SACHIN DEV', 'ENT'),
(8, 'DR NEHA THOMAS', 'OPHTHALMOLOGY'),
(9, 'DR AKHIL MOHAN', 'GENERAL MEDICINE'),
(10, 'DR DIVYA PILLAI', 'DENTISTRY');

SELECT * FROM DOCTORS;

create table Patients(
patient_id int primary key,
patient_name varchar(30) not null,
age int  not null);

describe patients;
INSERT INTO PATIENTS (patient_id, patient_name, age)
VALUES
(1, 'ARJUN', 25),
(2, 'PRIYA', 32),
(3, 'RAHUL', 45),
(4, 'ANJALI', 28),
(5, 'VISHNU', 55),
(6, 'MEERA', 38),
(7, 'AKHIL', 22),
(8, 'NEHA', 41),
(9, 'SACHIN', 60),
(10, 'DIVYA', 35);

SELECT * FROM patients;

create table Appoinments(
app_id int primary key,
patient_id int not null ,
doc_id int not null ,
app_date datetime default current_timestamp,
fee int , foreign key (patient_id)references patients(patient_id),foreign key (doc_id)references doctors(doc_id));

INSERT INTO Appoinments (app_id, patient_id, doc_id, fee)
VALUES
(1, 1, 1, 800),
(2, 2, 2,  600),
(3, 3, 3,  1000),
(4, 4, 4,  500),
(5, 5, 5,  1200),
(6, 6, 6,  700),
(7, 7, 7,  500),
(8, 8, 8,  900),
(9, 9, 9, 400),
(10, 10, 10, 600);

select * from appoinments;