SHOW DATABASES;
CREATE DATABASE school;
USE school;

-- TABLES --

CREATE TABLE students(
id int primary key not null auto_increment,
first_name varchar(100) not null,
last_name varchar(100) not null,
age int not null
); 

CREATE TABLE classes(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
subject varchar(100) NOT NULL,
description varchar(100) NOT NULL, 
level varchar(100) NOT NULL
);

CREATE TABLE enrollment(
id int NOT NULL AUTO_INCREMENT PRIMARY KEY, 
student_id int NOT NULL, 
class_id int NOT NULL, 
FOREIGN KEY (student_id) REFERENCES students(id), 
FOREIGN KEY (class_id) REFERENCES classes(id)
);

-- Students -- 
insert into students(first_name, last_name, age) values ("Jake", "McFaul", 26);
insert into students(first_name, last_name, age) values ("Esperanza", "Something", 25);
insert into students(first_name, last_name, age) values ("Pawel", "Stypulkowski", 30);

-- Classes --
insert into classes(subject, description, level) values ("Math", "Algebra", "College");
insert into classes(subject, description, level) values ("English", "advanced english", "High School");
insert into classes(subject, description, level) values ("Computer Science", "C++ Basics", "College");

-- Enrollment --
insert into enrollment(student_id, class_id) values (1, 1);
insert into enrollment(student_id, class_id) values (1, 3);
insert into enrollment(student_id, class_id) values (2, 2);
insert into enrollment(student_id, class_id) values (2, 3);
insert into enrollment(student_id, class_id) values (3, 1);
insert into enrollment(student_id, class_id) values (3, 2);

-- Selects -- 
select * from students;
select * from enrollment;
select * from classes;










