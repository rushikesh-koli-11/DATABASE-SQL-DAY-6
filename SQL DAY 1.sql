CREATE DATABASE college;

use college;

create database if not exists instagram;
use instagram;

create table user(
id int,
name varchar(30) not null,
email varchar(50)unique,
age int ,
followers int default 0,
following int,
constraint check(age>=13),
primary key (id));



insert into user(id,age,name,email,followers,following)
values
(1,14,"adam","adam@gmail.com",112,57),
(2,15,"adi","adi@gmail.com",12,5),
(3,17,"madi","madi@gmail.com",101,65),
(4,24,"dadim","dadim@gmail.com",11,70);

insert into user(id,age,name,email,followers,following)
values
(5,17,"asam","asam@gmail.com",102,57),
(6,19,"gadi","gadi@gmail.com",1222,500);

select id,name,email from user;
select * from user;

drop table user;
drop table post;

create table post(
id int primary key,
content varchar(30),
user_id int,
foreign key (user_id) references user(id));


select * from user
where email NOT in ("dadim@gmail.com","adi@gmail.com")
limit 2;

select name,age from user
order by age ASC;

select count(followers) from user
where age=17;

select max(followers),age from user
group by age
having max(followers)>100
order by age DESC;

update user
set followers=600
where age = 14;

set SQL_SAFE_UPDATES =0;

delete from user 
where age=14;

alter table user
add column city varchar(30) default "pune";

alter table user
drop column city;

alter table user
rename to instaUser;

alter table user
change column name names varchar(30);

alter table user
modify followers int default 5;

truncate table user;

select * from user;
