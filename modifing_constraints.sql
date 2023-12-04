select * from countries.ex2;
 
 alter table countries.ex2
 add constraint unique_name unique(name);
 
  alter table countries.ex2
 add constraint chk_name_2 check(length(name)>=3);
 
 alter table countries.ex2
drop check chk_name_2;
 
  alter table countries.ex2
  drop index unique_name;
 
 alter table countries.ex2 modify name varchar(50) null;
 
 alter table countries.ex2 add column gender varchar(20);
 
alter table countries.ex2 modify gender varchar(6);
 
 alter table countries.ex2 drop column gender;
 
 drop  table countries.useraddress;
 
 create table countries.useraddress(
id int primary key auto_increment,
street varchar(50) not null,
location varchar(50) not null,
city varchar(50) null,
state varchar(20),
country varchar(20) default('India'),
userid int not null,
constraint foreign key useraddress_user_userid(userid)references countries.ex2(id)
);