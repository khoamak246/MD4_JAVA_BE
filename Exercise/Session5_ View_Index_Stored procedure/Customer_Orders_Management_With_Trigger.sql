-- ========================================= Create DB =========================================
-- create database CustomerOrder;
-- use CustomerOrder;

-- ========================================= Create Table =========================================
-- create table customer (
-- cID int primary key auto_increment,
-- `Name` varchar(25),
-- cAge tinyInt
-- );

-- create table `Order`(
-- oID int primary key auto_increment,
-- cID int, 
-- oDate datetime,
-- oTotalPrice int,
-- constraint FK_Order_cID foreign key (cID) references customer(cID)
-- );

-- create table product(
-- pID int primary key auto_increment,
-- pName varchar(25) ,
-- pPrice int
-- );

-- create table OrderDetail(
-- oID int,
-- pID int,
-- odQTY int,
-- constraint FK_OrderDetail_oID foreign key (oID) references `Order`(oID),
-- constraint FK_OrderDetail_pID foreign key (pID) references Product(pID) 
-- );

-- ========================================= Insert Value =========================================
-- insert into customer(`Name`, `cAge`) values 
-- ("Minh Quan", 10),
-- ("Ngoc Oanh", 20),
-- ("Hong Ha", 50);

-- insert into `Order`(cID, oDate) 
-- values  (1, "2006-03-21"), (2, "2006-03-23"), (1, "2006-03-16");

-- insert into product(pName, pPrice) values 
-- ("May Giat", 3),
-- ("Tu Lanh", 5),
-- ("Dieu Hoa", 7),
-- ("Quat", 1),
-- ("Bep Dien", 2);

-- insert into OrderDetail values
-- (1, 1, 3),
-- (1, 3, 7),
-- (1, 4, 2),
-- (2, 1, 1),
-- (3, 1, 8),
-- (2, 5, 4),
-- (2, 3, 3);

-- ========================================= Requirement 2 =========================================
-- select `Order`.`oID`, customer.cID, oDate, oTotalPrice from `Order` join customer on `Order`.cID = customer.cID order by oDate desc;

-- ========================================= Requirement 3 =========================================
-- select pName, pPrice from product where pPrice = (select max(pPrice) from product);

-- ========================================= Requirement 4 =========================================
-- select customer.Name, product.pName from customer 
-- join `Order` on customer.cID = `Order`.cID
-- join `OrderDetail` on `Order`.oID = `OrderDetail`.oID
-- join `Product` on `Product`.pID = `OrderDetail`.pID;

-- ========================================= Requirement 5 =========================================
-- select `Name` from customer where cID not in (select cID from `Order`);

-- ========================================= Requirement 6 =========================================
-- select `Order`.oID, `Order`.oDate, `OrderDetail`.odQTY, product.pName, product.pPrice from `Order` 
-- join `OrderDetail`on `Order`.oID = `OrderDetail`.`oID`
-- join product on `OrderDetail`.pID = product.pID;

-- ========================================= Requirement 7 =========================================
-- SET sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
-- select `Order`.oID, `Order`.oDate, sum((product.pPrice * `OrderDetail`.odQTY)) as Total from `Order`
-- join `OrderDetail`on `Order`.oID = `OrderDetail`.`oID`
-- join product on `OrderDetail`.pID = product.pID group by oID;

-- ========================================= Requirement 8 =========================================
-- select sum(product.pPrice * `OrderDetail`.odQTY) as Total from `Order`
-- join `OrderDetail`on `Order`.oID = `OrderDetail`.`oID`
-- join product on `OrderDetail`.pID = product.pID;

-- ========================================= Requirement 8\9 =========================================
-- create trigger cusUpdate after update on customer 
-- for each row 
-- update `Order` set cID = new.cID where cID = old.cID;
-- set foreign_key_checks = 0;
-- update Customer set cID = 4 where cAge = 10;
-- select * from customer;
-- select * from `Order`;
-- set foreign_key_checks = 1;


