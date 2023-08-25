--find not liked pages

create table pages (page_id int,
					page_name varchar(50)
);

insert into pages values ( 20001, 'SQL');
insert into pages values ( 20045, 'brain');
insert into pages values ( 20701, 'merhaba');

create table page_like (page_id int,
					liked_date date
);
insert into page_like values ( 20001, '04/08/2022');
insert into page_like values ( 20045, '04/09/2022');
insert into page_like values ( 20001, '03/08/2022');



select * from pages;
select * from page_like;




select page_id from pages  
except
select page_id from page_like ; 