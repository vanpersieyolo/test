create database TestC;
use testC;
create table Product(
productId int primary key auto_increment,
categoryId int,
productName varchar(255),
proDescription varchar(255),
foreign key (categoryId) references category(categoryId)
);
create table category(
categoryId int primary key auto_increment,
categoryName varchar(255)
);
-- show all
delimiter $$
create procedure show_all()
begin
select * from product;
end $$ 
delimiter ;
call show_all;
-- add  
delimiter $$
create procedure insert_prorduct( in categoryId int, in productName varchar(255), in productDescripton varchar(255))
begin
insert into Product(categoryId,productName,proDescription) values (categoryId,productName,productDescripton);
end $$
delimiter ;
drop procedure insert_prorduct;
call insert_prorduct(2,'sản phẩm 5', 'sản phẩm');
-- update
delimiter $$
create procedure update_product (in ipproductId int , in ipcategoryId int, in ipproductName varchar(255), in ipproductDescripton varchar(255))
begin
update product 
set product.categoryId = ipcategoryId , product.productName = ipproductName , product.proDescription = ipproductDescripton 
where product.productid = ipproductId;
end $$
delimiter ;
-- remove
delimiter $$
create procedure remove_product(in inputID int)
begin
delete from product where product.productId = inputID;
end $$
delimiter ; 
call remove_product(1);
call show_all();
select * from product
where product.productId = 8;