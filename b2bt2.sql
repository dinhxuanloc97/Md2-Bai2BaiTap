use B2bt2Quanlibanhang;
create table customer(
cid int primary key not null,
cname varchar(50),
cage int not null
);
create table sOrder (
oid int primary key ,
cid int ,
foreign key (cid) references customer(cid),
odate datetime ,
ototalprice float 
);
create table product (
pid int primary key ,
pname varchar(50),
pprice float
);
create table orderdetail(
oid int not null ,
foreign key (oid) references sorder (oid),
pid int not null ,
foreign key (pid) references  product (pid),
odqty varchar(20)
);

insert into customer 
values(1,'nguyen van a ',20);

insert into sorder
values(2,1,'2021-12-05',12000);

insert into product
values(1,'banhmi',12000),
(2,'comtam',15000);

insert into orderdetail
values(1,1,'daxong'),
(2,2,'xuatok');
    