-- ========================== Create Database ==========================
-- create database studentManagement;
-- use studentManagement;

-- ========================== Create Table ==========================
-- create table classes(
-- ClassID int primary key auto_increment,
-- ClassName varchar(8000) not null,
-- StartDate datetime not null,
-- `status` bit
-- );

-- create table students(
-- StudentID int primary key auto_increment,
-- StudentName varchar(30),
-- Address varchar(50),
-- Phone varchar(20),
-- `Status` bit,
-- ClassID int not null
-- );

-- create table subjects(
-- SubID int primary key auto_increment,
-- SubName varchar(30) not null,
-- Credit tinyint not null default 1 check (Credit >= 1),
-- `Status` bit default 1
-- );

-- create table mark(
-- MarkID int primary key auto_increment,
-- SubID int not null,
-- StudentID int not null,
-- Mark float default 0 check (Mark >= 0 and Mark <= 100),
-- ExamTimes tinyint default 1 
-- );

-- ========================== Requirement 3 ==========================
-- alter table students add constraint FK_Studdents_ClassID foreign key (ClassID) references Classes(ClassID);
-- alter table classes alter column StartDate set default (current_date());
-- alter table Students alter column `Status` set default 1;
-- alter table Mark add constraint FK_Mark_SubID foreign key (SubID) references Subjects(SubID),
-- add constraint FK_Mark_StudentID foreign key (StudentID) references Students(StudentID);

-- ========================== Requirement 4 ==========================
-- insert into classes (ClassName, StartDate, `Status`) values 
-- ("A1", "2008-12-20", 1),
-- ("A2", "2008-12-22", 1),
-- ("B3", current_date(), 0);

-- insert into Students (StudentName, Address, Phone, `Status`, classID) values
-- ("Hung", "Ha Noi", "0912113113", 1, 1),
-- ("Hoa", "Hai Phong", null, 1, 1),
-- ("Manh", "Ho Chi Minh", 0123123123, 0, 2);


-- insert into Subjects(SubName, Credit, `Status`) values 
-- ("CF", 5, 1),
-- ("C", 6, 1),
-- ("HDJ", 5, 1),
-- ("RDBMS", 10, 1);


-- insert into Mark(SubID, StudentID, Mark, ExamTimes) values 
-- (1, 1, 8, 1),
-- (1, 2, 10, 2),
-- (2, 1, 12, 1);

-- ========================== Requirement 5 ==========================
-- update students set ClassID = 2 where StudentName = "Hung";
-- update students set Phone = "No Phone" where Phone = null;
-- update classes set ClassName = concat("New", ' ', ClassName) where `Status` = 0;
-- update classes set ClassName = replace(ClassName, "New", "old") where `Status` = 1 and ClassName like 'New%';
-- update classes set `Status` = 0 where ClassID not in (select ClassID from students);
-- update subjects set `Status` = 0 where SubID not in (select SubID from Mark);

-- ========================== Requirement 6 ==========================
-- select * from students where StudentName like 'h%';
-- select * from classes where month(StartDate) = 12;
-- select Credit from Subjects where Credit = (select max(Credit) from Subjects);
-- select * from Subjects where Credit = (select max(Credit) from Subjects);
-- select * from Subjects where Credit between 3 and 5;
-- select Students.ClassID, Classes.ClassName, Students.StudentName, Students.Address from Students 
-- join Classes on Students.ClassiD = Classes.ClassID;
-- select * from subjects where SubID not in (select SubID from Mark);
-- select Subjects.SubID, Subjects.SubName, Subjects.Credit, Subjects.`Status`, Mark from subjects 
-- join mark on subjects.SubID = mark.SubID having Mark = (select max(Mark) from mark);
-- select Students.StudentID, Students.StudentName, Students.Address, Students.Phone, Students.`Status`, avg(Mark) as Average 
-- from Students join mark on Students.StudentID = mark.StudentID group by Students.StudentID;
-- select Students.StudentID, Students.StudentName, Students.Address, Students.Phone, Students.`Status`, avg(Mark) as Average 
-- from Students join mark on Students.StudentID = mark.StudentID group by Students.StudentID order by rank() over(order by avg(Mark) desc);
-- select Students.StudentID, Students.StudentName, Students.Address, Students.Phone, Students.`Status`, avg(Mark) as Average 
-- from Students join mark on Students.StudentID = mark.StudentID group by Students.StudentID having avg(Mark) > 10;
-- select Students.StudentName, Subjects.SubName, mark.Mark from Students 
-- join mark on Students.StudentID = mark.StudentID
-- join Subjects on Subjects.SubID = mark.SubID order by mark.Mark desc, Students.StudentName asc;

-- ========================== Requirement 7 ==========================
-- delete from classes where `Status` = 0;
-- delete from Subjects where SubID not in (select SubID from mark);
-- alter table Mark drop column ExamTimes;
-- alter table Classes rename column `Status` to ClassStatus;
-- alter table mark rename SubjectTest;





