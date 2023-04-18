-- ================= Create datase =================
-- create database users;
-- use users;

-- ================= Create table =================
-- create table users(
-- id int primary key auto_increment,
-- `name` varchar(50) not null,
-- age int not null,
-- email varchar(200),
-- phoneNumber varchar(20)
-- );

-- ================= Create Procedure =================
-- DELIMITER //
-- create procedure get_all_user()
-- begin
-- 	select * from users;
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure insert_user(in `iName` varchar(50), in `iAge` int, in `iEmail` varchar(200), in `iPhoneNumber` varchar(20))
-- begin 
-- insert into users(`name`, `age`, `email`, `phoneNumber`) values (`iName`, `iAge`, `iEmail`, `iPhoneNumber`);
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure update_user(in `uId` int, in `uName` varchar(50), in `uAge` int, in `uEmail` varchar(200), in `uPhoneNumber` varchar(20))
-- begin
-- update users set `name` = `uName`, `age` = `uAge`, `email` = `uEmail`, `phoneNumber` = `uPhoneNumber` where `id` = `uId`;
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure get_user_by_id(in fid int)
-- begin
-- select * from users where id = fid;
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure delete_user(in `delId` int)
-- begin
-- delete from users where id = `delId`;
-- end //
-- DELIMITER ;

