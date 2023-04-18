create database `shop_management`;
use `shop_management`;
create table `Customner`
(
`cID` int primary key auto_increment,
`cName` varchar(50),
`cAge` int
);

create table `Order`(
`oID` int primary key auto_increment,
`cID` int primary key,
`oDate` date,
`oTotalPrice` doube
)