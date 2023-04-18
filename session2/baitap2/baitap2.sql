 create database session2_baitap2;
 -- Tạo bảng customer
 create table customer(
 cID int primary key auto_increment,
 cName varchar(45) not null,
 cAge varchar(10)
 );
 
 -- tạo bảng order
 create table `Order`(
 oId int auto_increment primary key,
 cId int,
 foreign key (cId) references customer(cId),
 oDate datetime default now(),
 oTotalprice float 
 );
 -- tạo bảng orderDetail
 create table orderDetail(
 oId int,
 foreign key (oId) references `order`(oId),
 pId int,
 foreign key (pId) references product(pId),
 odQuantity int not null
 );
 
 -- tạo bảng product
 create table product(
 pId int auto_increment primary key,
 pName varchar(255) not null,
 pPrice float
 );
 
 
 
 
 
 