create table t_readonly(
no number,
name varchar2(10)
);

insert into t_readonly values(1, 'AAA');

select * from t_readonly;

commit;

alter table t_readonly read only;

insert into t_readonly values(2,'BBB');

alter table t_readonly read writer;

delete from t_readonly;


drop table t_readonly;

select * from student1;
insert into student1 values('20101059','조병준','컴퓨터정보',1,'B','M',164,70);

insert into student1 (stu_no, stu_name, stu_dept, stu_year, stu_class, stu_gender)
values('20102038','남지선','전기전자',1,'C','F');

select * from student1 where stu_name = '남지선';

insert into student1 (stu_no, stu_name, stu_dept, stu_year, stu_class, stu_gender)
values('2009309','박소신','기계',
(select stu_year from student1 where stu_no='20093075'),
(select stu_class from student1 where stu_no='20093075'),'M');

select * from student1;

desc student1;

insert into student1
    (select *
    from student
    where stu_grade=3);

select * from student1 where stu_no=20072088;

update student1 set stu_class = 'B' where stu_no=20072088;

select * from student1;

update student1
set stu_height=stu_height+2
where stu_no = 20061062;

select * from student1;

update student1
set stu_year = stu_year+1;

select * from student1;

delete from student1;

rollback;


select * from student1 where stu_no=20062021;

update student1
set stu_no=20061021, stu_dept='컴퓨터정보'
where stu_no=20062021;

select * from enrol natural join subject;

update enrol1
set enr_grade=enr_grade-10
where sub_no=(select sub_no
                    from subject1
                    where sub_name='기계공작법');
                    
select * from enrol1;


select * from student natural join enrol natural join enrol where stu_name = '김인중';

select * from enrol1 where sub_no = (select stu_no from student1 where stu_name = '김인중')
and sub_no = (select sub_no from subject1 where sub_name = '소프트웨어공학');

update enrol1
set enr_grade=0
where stu_no= (select stu_no from student1 where stu_name ='김인중')
and sub_no = (select stu_no from student1 where stu_name = '김인중');

select * from student1 where stu_no = '20093088';

delete * from student1 where stu_no = '20093088';

select * from subject1;

insert into subject1 values('112','자동화시스템','고종민',3,'기계');

update subject1
set sub_no='501'
where sub_no ='110';

select * from subject1;

delete from subject1
where sub_no='101';

select * from enrol1;
select * from subject1;

update enrol1
set sub_no='999'
where sub_no not in
(select sub_no from subject1);


update enrol1
set stu_no=99999999
where stu_no not in
(select stu_no from student1);  -- PK라서 변경이 어렵다

select * from student1;

delete from enrol1
where sub_no='999';

delete from subject1
where sub_no not in
(select distinct sub_no from enrol);

create table charge_01
(u_date varchar2(6),
cust_no number,
u_time number,
charger number );

create table charge_02
(u_date varchar2(6),
cust_no number,
u_time number,
charger number );


insert into charge_01 values('141001',1000,2,1000);
insert into charge_01 values('141001',1001,2,1000);
insert into charge_01 values('141001',1002,1,500);
insert into charge_02 values('141002',1000,3,1500);
insert into charge_02 values('141002',1001,4,2000);
insert into charge_02 values('141002',1003,1,500);


create table ch_total
(u_date varchar2(6),
cust_no number,
u_time number,
charger number );

merge into ch_total total
using charge_01 ch01
on(total.u_date=ch01.u_date)
when matched then
update set total.cust_no = ch01.cust_no
when not matched then
insert values(ch01.u_date,ch01.cust_no,ch01.u_time,ch01.charger);

select * from ch_total;

merge into ch_total total
using charge_02 ch02
on(total.u_date=ch02.u_date)
when matched then
update set total.cust_no = ch02.cust_no
when not matched then
insert values(ch02.u_date, ch02.cust_no,ch02.u_time,ch02.charger);

select * from ch_total;