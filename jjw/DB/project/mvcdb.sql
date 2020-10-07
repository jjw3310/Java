create table visitor (
name varchar2(30),
writedate date,
content varchar2(300)
);

create table news(
id number(5) primary key,
writer varchar2(18),
title varchar2(120),
content varchar2(900),
writedate date,
viewCount number(8)
);

create sequence news_seq
start with 1
increment by 1;

commit;

select * from visitor;
select *
from visitor
where name='sdf';