-- create database `OrderManagement`;
-- use `OrderManagement`;

-- create table `Customer`(
-- `cID` int primary key auto_increment,
-- `Name` varchar(25),
-- `cAge` tinyInt
-- )

-- create table `Order`(
-- `oID` int primary key auto_increment,
-- `cID` int,
-- `oDate` datetime,
-- `oTotalPrice` int,
-- constraint `FK_PersonOrder` foreign key (`cID`)
-- references `Customer`(`cId`)
-- )

-- create table Product (
-- pID int primary key auto_increment,
-- pName varchar(25),
-- pPrice int
-- );

-- create table OrderDetail (
-- oID int,
-- pID int,
-- odQTY int,
-- foreign key (oID) references `Order`(`oID`),
-- foreign key (pID) references `Product`(`pID`)
-- );


-- insert into Customer(Name, cAge) values ("Minh Quan", 10), ("Ngoc Anh", 20), ("Hong Ha", 50);
-- insert into `Order` values (1,1,"2006-03-21", null), (2,2,"2006-03-23", null), (3,1,"2006-03-16", null);
-- insert into Product values (1, "May Giat", 3), (2, "Tu Lanh", 5), (3, "Dieu Hoa", 7), (4, "Quat", 1), (5, "Bep Dien", 2);
-- insert into `OrderDetail` values (1,1,3), (1,3,7), (1,4,2), (2,1,1), (3,1,8), (2,5,4), (2,3,3);


-- select oID, oDate, oTotalPrice from `Order`;

-- select `Name`,`pName`  from `customer` 
-- join `order` on `customer`.`cID` = `order`.`cID` 
-- join `orderdetail` on `order`.`oID` = `orderdetail`.`oID` 
-- join `product` on `product`.`pID` = `order`.`oID`  ;

-- select `Name` from `customer` where `cID` not in (select `cID` from `order`);

-- select `order`.`oID`, `order`.`oDate`, sum((odQTY * pPrice)) as Total  from `customer` 
-- join `order` on `customer`.`cID` = `order`.`cID` 
-- join `orderdetail` on `order`.`oID` = `orderdetail`.`oID` 
-- join `product` on `product`.`pID` = `order`.`oID` group by `order`.`oDate`, `order`.`oID`;











