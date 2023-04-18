create database `session1_RelationalDB`;
use `session1_RelationalDB`;
create table mytable(
`id` int primary key auto_increment,
`name` varchar(45) null,
`age` int not null,
`country` varchar(45) not null
)