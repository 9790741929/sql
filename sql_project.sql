create database sql_project;
show databases;
use sql_project;

-- CREATE 
-- 1. STUDENT TABLE:(y_o_j =year of joining)
-- 2. COURSE TABLE:
-- 3. INSTRUCTOR TABLE:
-- 4. ENROLLMENT TABLE:
-- INSERT 30 VALUES TO ALL THE TABLES


create table STUDENTS(stud_Id int primary key auto_increment,
                      first_name varchar(50) not null ,
                      last_name varchar(50),
                      email varchar (50) unique,
                      course varchar(50),
                      y_o_j date);
-- alter table students modify column stud_id int ;
                      
  create table COURSE(course_Id int primary key,
                      course_name varchar(50) not null ,
                      branches varchar(50) not null,
					  course_fees varchar(50));
alter table course modify column course_fees int;
                      
create table INSTRUCTOR(instr_Id int primary key,
                     first_name varchar(50) not null ,
                      last_name varchar(50),
                      email varchar (50) unique,
                      branches varchar(50) not null);
					  
create table  ENROLLMENT(enroll_Id int primary key auto_increment,
                         stud_Id int, 
                         course_Id int,
                      foreign key(stud_id)references STUDENTS(stud_Id) ON DELETE CASCADE,
                      foreign key(course_id)references  COURSE(course_Id),
                      enroll_Date date);
alter table drop constrait

-- students

insert into STUDENTS (stud_Id,first_name,last_name,email,course,y_o_j) values (1,'sumaiya','sulthana','sumi@gamail.com','ai & ml','2024-01-27');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Jeremy','Lonsdale','lon@gamail.com','datascience','2024-01-28');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Dennis','Kane','kane@gmail.com','fullstack','2024-02-27');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Karl','Braun','karl@gmail.com','javascript','2023-01-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Maribeth','Dona','dona@gmail.com','javascript','2023-02-02');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Alyssa','Tate','tate@gmail.com','Business analytics','2024-02-21');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Maribeth','Dona','doa@gmail.com','ai &ml','2023-02-02');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Maribeth',' Dona','don@gmail.com','robotics','2023-02-02');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Karl',' Braun','kal@gmail.com','sqldev','2023-01-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Karl',' Braun','kar@gmail.com','datascience','2023-01-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Ted ','Trevino','ted@gmail.com','Business analytics','2023-06-10');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Ross',' DeVincentis','ross@gmail.com','javascript','2024-02-01');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Maria','Bertelson','maria@gmail.com','datascience','2023-12-27');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Maribeth','Dona','dna@gmail.com','project management','2023-02-02');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Karl','Braun','arl@gmail.com','robotics','2023-01-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values ('Ken',' Heidel','ken@gmail.com','mern stack','2023-11-08');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Ted',' Trevino','td@gmail.com','project management','2023-06-10');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('John',' Murray','john@gmail.com','robotics','2024-02-27');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Stephanie',' Phelps','phl@gmail.com','ai & ml','2024-01-01');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Stephanie',' Phelps','pel@gmail.com','robotics','2024-01-01');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Stephanie',' Phelps','phe@gmail.com','project management','2024-01-01');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Ed',' Braxton','ed@gmail.com','fullstack','2023-06-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Karl',' Braun','karl1@gmail.com','project management','2023-01-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Ed',' Braxton','ed1@gmail.com','cad','2023-06-20');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Susan',' Vittorini','susan@gmail.com','cad','2024-02-12');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Shui',' Tom','tom@gmail.com','sqldev','2024-02-27');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('David', 'Wiener','david@gmail.com','project management','2024-02-15');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Shui',' Tom','tom1@gmail.com','javascript','2024-02-27');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Benjamin',' Farhat','farhat@gmail.com','mernstack','2024-01-30');
insert into STUDENTS (first_name,last_name,email,course,y_o_j) values('Michelle',' Lonsdale','mich@gmail.com','sqldev','2024-01-28');

-- course

insert into COURSE (course_Id,course_Name,branches,course_fees)values
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
	
    -- INSTRUCTOR
    
insert into INSTRUCTOR (instr_Id,first_name,last_name,email,branches)values
					
                    (6001,'Arthur','Gainer','arthur@gmail.com','IT'),
					(6002,'Janet','Molinari','janet@gmail.com','IT'),
                    (6003,'Ken','Lonsdale','dale@gmail.com','IT'),
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
                    ('Christopher Martinez','mart@gmail.com','Mechanical'),
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
                    
                    
                    
                    
         --  ENROLLMENT
         
  insert into ENROLLMENT (enroll_Id,STUD_Id,course_Id,ENROLL_DATE)values       
					 (,1,12,'2024-01-30'),
                     (,2,10,'2024-02-20'),
                     (,3,5,'2024-02-10'),
                     (,4,8,'2024-2-30'),
                     (,5,4,'2023-01-30'),
                     (,6,4,'2023-03-02'),
                     (,7,19,'2023-02-29'),
                     (,8,12,'2023-04-10'),11
                     (,9,13,'2023-05-15'),12
                     (,10,5,'2023-02-20'),13
                     (,12,10,'2023-3-15'),14
                     (,13,19,'2023-06-20'),15
                     (,14,4,'2024-02-20'),16
                     (,15,10,'2024-01-20'),17
                     (,16,20,'2023-07-10'),18
                     (,17,13,'2023-04-10'),19
                     (,18,9,'2023-12-02'),20
                     (,19,20,'2023-07-70'),21
                     (,20,13,'2024-02-05'),22
                     (,21,12,'2023-04-10'),23
                     (,22,13,'2023-05-15'),24
                     (,23,20,'2023-07-10'),25
                     (,24,8,'2023-06-30'),26
                     (,25,20,'2023-05-20'),27
                     (,26,14,'2023-08-20'),28
                     (,27,14,'2024-03-01',),29
                     (,28,5,'2024-03-02'),30
                     (,29,20,'2024-02-20'),31
                     (,30,4,'2024-04-20'),32
                     (,33,9,'2024-02-10');33

         
