drop table guestbook;

create table guestbook(
no       int primary key auto_increment,
name     varchar(50) not null,
password varchar(10) not null,
contents text not null,
reg_date datetime not null
);

insert 
  into guestbook
values (null, '둘리', '1234', '호이~', now()); 


select no, name, contents, reg_date
  from guestbook;