-- create database `Session5_Exercise`;
-- use `Session5_Exercise`;

-- create table products(
-- id int primary key auto_increment,
-- productCode int,
-- productName varchar(50),
-- productPrice decimal(5,4),
-- productAmount int,
-- productDescription varchar(255),
-- productStatus boolean default true
-- )


-- insert into products(productCode, productName, productPrice, productAmount, productDescription) 
-- values 
-- (1, "ao", 1.2, 5, "ao des"), 
-- (2, "quan", 2.2, 6, "quan des"), 
-- (3, "giay", 3.2, 7, "quan des"), 
-- (4, "dep", 4.2, 8, "quan des")


-- alter table products add index idx_ProductCode(productCode);
-- alter table products add index idx_NameAndPrice(productName, productPrice);

-- explain select * from products where productCode = 2;

-- create view productView as select productCode, productName, productPrice, productStatus from products;

-- create or replace view productView as  select productCode, productName, productPrice, productStatus from products where productCode in (2,4);
--  drop view productView;


-- DELIMITER //
-- create procedure findAllProduct()

-- begin
-- select * from products;
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure saveProduct
-- (in productCode int, in productName varchar(50), in productPrice decimal(5,4), in productAmount int, in productDescription varchar(255))
-- begin 
-- insert into products(productCode, productName, productPrice, productAmount, productDescription) 
-- values (productCode, productName, productPrice, productAmount, productDescription);
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure updateProductById
-- (in newId int,in newProductCode int, in newProductName varchar(50), in newProductPrice decimal(5,4), in newProductAmount int, in newProductDescription varchar(255))
-- begin 
-- set productCode = newProductCode, productName = newProductName, productPrice = newProductPrice, productAmount = newProductAmount, productDescription = newProductDescription
-- where id = newId;
-- end //
-- DELIMITER ;

-- DELIMITER //
-- create procedure deleteProductById(in delId int)
-- begin 
-- delete from products
-- where id = delId;
-- end //
-- DELIMITER ;


