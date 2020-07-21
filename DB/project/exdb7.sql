--ppt 5장

create table a_enrol
as select *
    from enrol
    where stu_no < 20150000;
    
describe a_enrol;

select * from a_enrol;

insert into a_enrol(sub_no, stu_no, enr_grade)
values (108, 20151062, 92);

select * from a_enrol;

insert into a_enrol
values (109, 20152088, 85);

insert into a_enrol(sub_no, stu_no)
values (110, 20152088);

insert into a_enrol
values(111, 20153075, null);

insert into a_enrol
select * from enrol
where stu_no like '2015%';

select sub_no, stu_no,enr_grade,enr_grade+5
from a_enrol;


update a_enrol
set enr_grade = enr_grade + 5;

update a_enrol
set enr_grade = enr_grade + 10
where sub_no = 104;


update a_enrol
set enr_grade = enr_grade + 10
where sub_no = (select sub_no
from subject where sub_name = '시스템분석설계');

select * from a_enrol;

delete from a_enrol where stu_no = 20131001; -- 

delete from a_enrol; -- date 삭제

drop table a_enrol;  -- table 날리기


delete from b_student;

select * from b_student;

rollback;