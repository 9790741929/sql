create database sql_project;
show databases;
use sql_project;

-- CREATE 
-- 1. STUDENT TABLE:(y_o_j =year of joining)
-- 2. COURSE TABLE:
-- 3. INSTRUCTOR TABLE:
-- 4. ENROLLMENT TABLE:
-- INSERT 30 VALUES TO ALL THE TABLES

DROP T
create table STUDENT(stud_Id int primary key auto_increment,
                      first_name varchar(50) not null ,
                      last_name varchar(50),
                      email varchar (50) unique,
                      course varchar(50),
                      y_o_j date);
                      
create table COURSES(course_Id int primary key,
                      course_name varchar(50) not null ,
                      branches varchar(50) not null,
					  course_fees int);
                      
create table INSTRUCTORS (instr_Id int primary key  auto_increment,
                     first_name varchar(50) not null ,
                      last_name varchar(50),
                      email varchar (50) unique,
                      branches varchar(50) not null) auto_increment=600101;
                      
create table ENROLLMENTS1(enroll_Id int primary key auto_increment,
                         stud_Id int, 
                         course_Id int,
                      foreign key(stud_id)references STUDENT(stud_Id) ON DELETE CASCADE,
                      foreign key(course_id)references COURSES(course_Id)ON DELETE CASCADE,
                      enroll_Date date)auto_increment=00101;
                      
                      
 -- DATA INSERTIONS                     
-- students
        
insert into STUDENT(first_name,last_name,email,course,y_o_j) values 
('sumaiya','sulthana','sumi@gamail.com','ai & ml','2024-01-27'),
('Dennis','Kane','kane@gmail.com','fullstack','2024-02-27'),
('Karl','Braun','karl@gmail.com','javascript','2023-01-20'),
('Maribeth','Dona','dona@gmail.com','javascript','2023-02-02'),
('Alyssa','Tate','tate@gmail.com','Business analytics','2024-02-21'),
('Maribeth','Dona','doa@gmail.com','ai &ml','2023-02-02'),
('Maribeth',' Dona','don@gmail.com','robotics','2023-02-02'),
 ('Karl',' Braun','kal@gmail.com','sqldev','2023-01-20'),
 ('Karl',' Braun','kar@gmail.com','datascience','2023-01-20'),
 ('Ted ','Trevino','ted@gmail.com','Business analytics','2023-06-10'),
 ('Ross',' DeVincentis','ross@gmail.com','javascript','2024-02-01'),
 ('Maria','Bertelson','maria@gmail.com','datascience','2023-12-27'),
 ('Maribeth','Dona','dna@gmail.com','project management','2023-02-02'),
 ('Karl','Braun','arl@gmail.com','robotics','2023-01-20'),
 ('Ken',' Heidel','ken@gmail.com','mern stack','2023-11-08'),
('Ted',' Trevino','td@gmail.com','project management','2023-06-10'),
('John',' Murray','john@gmail.com','robotics','2024-02-27'),
('Stephanie',' Phelps','phl@gmail.com','ai & ml','2024-01-01'),
('Stephanie',' Phelps','pel@gmail.com','robotics','2024-01-01'),
('Stephanie',' Phelps','phe@gmail.com','project management','2024-01-01'),
('Ed',' Braxton','ed@gmail.com','fullstack','2023-06-20'),
('Karl',' Braun','karl1@gmail.com','project management','2023-01-20'),
('Ed',' Braxton','ed1@gmail.com','cad','2023-06-20'),
('Susan',' Vittorini','susan@gmail.com','cad','2024-02-12'),
('Shui',' Tom','tom@gmail.com','sqldev','2024-02-27'),
('David', 'Wiener','david@gmail.com','project management','2024-02-15'),
('Shui',' Tom','tom1@gmail.com','javascript','2024-02-27'),
('Benjamin',' Farhat','farhat@gmail.com','mernstack','2024-01-30'),
('Michelle',' Lonsdale','mich@gmail.com','sqldev','2024-01-28');
insert into STUDENT(stud_id,first_name,last_name,email,course,y_o_j) values 
 (30,'Jeremy','Lonsdale','lon@gamail.com','datascience','2024-01-28');
 
-- course

insert into COURSES (course_Id,course_Name,branches,course_fees)values
                     (1,'html','IT',5000),
                     (2,'css','IT',5000),
                     (3,'java','IT',5000),
                     (4,'javascript','IT',5000),
                     (5,'sqldev','IT',5000),
                     (6,'.net','IT',5000),
                     (7,'c#','IT',5000),
                     (8,'fullstack','IT',25000),
                     (9,'mernstack','IT',25000),
                     (10,'datascience','IT',25000),
                     (12,'ai &ml','IT',25000),
                     (13,'robotics','Mechanical',20000),
                     (14,'cad','Mechanical',20000),
                     (15,'design engg','Mechanical',20000),
                     (16,' HVAC','Mechanical',20000),
                     (17,'Mechatronics','Mechanical',20000),
                     (18,'Supply Chain Management','Mechanical',20000),
                     (19,'business analytics','MBA',5000),
                     (20,'project management','MBA',15000),
                     (21,'Electrophysics','Electrical',10000),
                     (22,'Electromagnetics','Electrical',10000),
                     (23,'Microelectronics','Electrical',10000),
                     (24,'Communication System','Electrical',10000),
                     (25,'Signal Processing system','Electrical',10000),
                     (26,'Human Resource Management','MBA',5000),
                     (27,'Marketing.','MBA',5000),
                     (28,'Finance and Accounting','MBA',5000),
                     (29,'Operations Management','MBA',5000),
                     (30,'Microeconomics','MBA',6000);

 -- INSTRUCTORS
    
insert into INSTRUCTORS (first_name,last_name,email,branches)values ('Arthur','Gainer','arthur@gmail.com','IT'),
					('Janet','Molinari','janet@gmail.com','IT'),
                    ('Ken','Lonsdale','dale@gmail.com','IT'),
                    ('Fred','Chung','fred@gmail.com','IT'),
					('Maribeth','Schnelling','maribeth@gmail.com','IT'),
                    ('Laurel','Elliston','elli@gmail.com','IT'),
					('Charlotte','Melton','melton@gmail.com','IT'),
                    ('Jeremy','Farry','farry@gmail.com','IT'),
                    ('Brendan','Murry','murryn@gmail.com','IT'),
					('Rob','Beeghly','rob@gmail.com','IT'),
                    ('Stephanie','Ulpright','ulp@gmail.com','Mechanical'),
					('Paul','Stevenson','paul@gmail.com','Mechanical'),
                    ('Berenike','Kampe','kampe@gmail.com','Mechanical'),
                    ('Jonathan','Howell','how@gmail.com','Mechanical'),
                    ('Christopher',' Martinez','mart@gmail.com','Mechanical'),
                    ('Ben','Ferrer','ben@gmail.com','Mechanical'),
                    ('Gary','Mitchum','gary@gmail.com','Electrical'),
					('John','Huston','huston@gmail.com','Electrical'),
                    ('Christopher','Schild','schild@gmail.com','Electrical'),
					('Christina','VanderZanden','christ@gmail.com','Electrical'),
                    ('Dean','Katz','katz@gmail.com','Electrical'),
					('Katherine','Ducich','ducich@gmail.com','Electrical'),
                    ('Mark','Hamilton','mark@gmail.com','MBA'),
                    ('Philisse','Overcash','over@gmail.com','MBA'),
                    ('Sarah','Jordon','jordon@gmail.com','MBA'),
                    ('Lindsay','Shagiari','lind@gmail.com','MBA'),
                    ('Bradley','Drucker','brad@gmail.com','MBA'),
					('Dave','Brooks','brooks@gmail.com','MBA'),
                    ('Speros','Goranitis','speros@gmail.com','IT'),
                    ('Roy','Collins','roy@gmail.com','IT');
                    
 --  ENROLLMENTS
         
  insert into ENROLLMENTS1 (STUD_Id,course_Id,ENROLL_DATE)values       
					 (1,12,'2024-01-30'),
					  (2,8,'2024-2-28'),
                     (3,4,'2023-01-30'),
                     (4,4,'2023-03-02'),
                     (5,19,'2024-02-28'),
                     (6,12,'2023-04-10'),
                     (7,13,'2023-05-15'),
                     (8,5,'2023-02-20'),
                     (9,10,'2023-3-15'),
                     (10,19,'2023-06-20'),
                     (11,4,'2024-02-20'),
                     (12,10,'2024-01-20'),
                     (13,20,'2023-07-10'),
                     (14,13,'2023-04-10'),
                     (15,9,'2023-12-02'),                  
                     (16,20,'2023-07-10'),
                     (17,13,'2024-02-05'),
                     (18,12,'2023-04-10'),
                     (19,13,'2023-05-15'),
                     (20,20,'2023-07-10'),
                     (21,8,'2023-06-30'),
                     (22,20,'2023-05-20'),
                     (23,14,'2023-08-20'),
                     (24,14,'2024-03-01'),
                     (25,5,'2024-03-02'),
                     (26,20,'2024-02-20'),
                     (27,4,'2024-04-20'),
                     (28,9,'2024-02-10'),
                     (29,5,'2024-02-10'),
                     (30,10,'2024-02-20');
		
-- TABLE SLECTION QUERIES:                     
                     
SELECT * FROM sql_project.student;
SELECT * FROM sql_project.COURSES;
SELECT * FROM sql_project.INSTRUCTORS;
SELECT * FROM sql_project.ENROLLMENTS1;

-- PERFORM THESE QUERIES

-- 1. unique enrollment count i.e how many users purchased my course 
select count(distinct(stud_id)) as no_of_users from enrollments1;

-- 2. retrive the course name not entrolled by student
select distinct(course_id) from enrollments1;
create view uni as
               select distinct(course_id) from enrollments1;

select c.course_name,c.course_Id from courses as c 
       left join uni as u on c.course_id = u.course_id where u.course_id is null;
       
       
-- 3. courseId,course_name,course_branch,instructorId,first name
select a.course_Id,a.course_name,a.branches,b.instr_Id,b.first_name from courses as a
           inner join instructors as b on a.branches = b.branches ;


-- 4. student_details with courseId
select s.stud_Id,s.first_name,s.last_name,s.email,s.course_name,s.y_o_j,e.course_Id from student as s
           left join enrollments1  as e on s.stud_Id = e.stud_Id;


-- 5. display the student based on no max course they purchased
select first_name,count(course_name)from student group by first_name;


-- 6. rank for that student based on course fees
select e.course_Id,e.enroll_Id,e.stud_Id,e.enroll_date,c.course_fees from enrollments1 as e
           left join courses  as c on e.course_Id = c.course_Id;
           
create view cour_fees as 
                      select e.course_Id,e.enroll_Id,e.stud_Id,e.enroll_date,c.course_fees from enrollments1 as e
           left join courses  as c on e.course_Id = c.course_Id;
          
select course_fees,stud_id,course_id,rank() over
 (partition by course_fees order by stud_id) as ranks from cour_fees;

