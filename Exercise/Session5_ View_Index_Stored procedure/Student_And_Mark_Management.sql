-- create database StudentTest;
-- use StudentTest;

-- create table `Test`(
-- `TestID` int primary key auto_increment,
-- `Name` varchar(50)
-- );

-- create table `Students`(
-- `RN` int primary key auto_increment,
-- `Name` varchar(50),
-- `Age` int,
-- `Status` varchar(10)
-- );

-- create table `StudentTest`(
-- `RN` int,
-- `TestID` int,
-- `Date` date,
-- `Mark` int,
-- foreign key (`RN`) references `Students`(`RN`),
-- foreign key (`TestID`) references `Test`(`TestID`)
-- );

-- insert into Students(Name, Age) values ("Nguyen Hong Ha", 20), ("Truong Ngoc Anh", 30), ("Tuan Minh", 25), ("Dan Truong", 22);
-- insert into Test(Name) values ("EPC"), ("DWMX"), ("SQL1"), ("SQL2");
-- insert into StudentTest values 
-- (1, 1, "2006-07-17", 8),
-- (1, 2, "2006-07-18", 5),
-- (1, 3, "2006-07-19", 7),
-- (2, 1, "2006-07-17", 7),
-- (2, 2, "2006-07-18", 4),
-- (2, 3, "2006-07-19", 2),
-- (3, 1, "2006-07-17", 10),
-- (3, 3, "2006-07-18", 1);


-- alter table Students add constraint CHK_StudentAge check (Age >= 15 and Age <= 55);
-- alter table StudentTest alter Mark set default 0;
-- alter table StudentTest add primary key (RN, TestID);
-- alter table Test add constraint UC_Name unique (Name);
-- alter table Test drop constraint UC_Name;

-- select Students.Name, Test.Name, Mark, Date from Students join StudentTest on Students.RN = StudentTest.RN join Test on StudentTest.TestID = Test.TestID;
-- select RN, Name, Age from Students where RN not in (select RN from StudentTest);
-- select Students.Name, Test.Name, Mark, Date from Students join StudentTest on Students.RN = StudentTest.RN join Test on StudentTest.TestID = Test.TestID where Mark < 5;
-- SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

-- select Students.Name, avg(Mark) as Average from Students
-- join StudentTest on Students.RN = StudentTest.RN 
-- join Test on StudentTest.TestID = Test.TestID group by Students.Name 
-- having avg(Mark) >= all (select avg(Mark) from StudentTest group by RN);

-- select Test.Name, max(Mark) from Test join StudentTest on Test.TestID = StudentTest.TestID group by Test.Name order by Test.Name asc;

-- select Students.Name, Test.Name from Students left join StudentTest on Students.RN = StudentTest.RN left join Test on StudentTest.TestID = Test.TestID

-- update Students set Age = Age + 1;

-- update Students set `Status` = 
-- case
-- 	when Age < 30 then "young"
--     when Age > 30 then "old"
-- end
-- where `Status` is not null;
-- select * from Students;


-- select Students.Name, Test.Name, Mark, Date from Students join StudentTest on Students.RN = StudentTest.RN join Test on StudentTest.TestID = Test.TestID order by Date asc;

-- select Students.Name, Test.Name, avg(Mark), Date from Students join StudentTest on Students.RN = StudentTest.RN join Test on StudentTest.TestID = Test.TestID group by StudentTest.RN having avg(Mark) > 4.5 and Students.Name like 'T%';

-- select StudentTest.RN, Students.Name, Students.Age, Test.Name, avg(Mark), rank() over (order by avg(Mark) asc) as Mark_Rank from Students join StudentTest on Students.RN = StudentTest.RN join Test on StudentTest.TestID = Test.TestID group by StudentTest.RN;


-- alter table Students modify column `Name` varchar(max);


-- update Students set 
-- `Name` = case
-- 	when Age > 20 then concat_ws(' ', "Old", Name)
--     when Age <= 20 then concat_ws(' ', "Young", Name)
-- end
--     where `Name` is not null;


-- delete from Test where TestID not in (select TestID from studenttest);

-- update studenttest set Mark = null where Mark < 5;








