--DML 데이터 조작어 insert, update, delete

-- DDL(데이터정의어) create alter drop

-- DCL(데이터제어어)


create table test
(u_id varchar2(10),
u_date date);

create table t_student
as select * from student where stu_dept='기계';

desc t_student;
select * from t_student;

alter table t_student
add (army char(1));

desc t_student;

alter table t_student
modify(army number);

rename t_student to test_student;

select * from test_student;

truncate table test_student;

delete * from test_student;


create table emp01(
empno number(4),
ename varchar2(14),
sal number(7,3));

select * from emp01;

desc emp01;


alter table emp01
add (birth date);

alter table emp01
modify (ename varchar2(30));

alter table emp01
drop column ename;

alter table emp01
set unused (empno);

desc emp01;

select * from DBA_UNUSED_COL_TABS;

alter table emp01
drop unused columns;

rename emp01 to emp02;

create table t_student(
stu_no char(9),
stu_name varchar2(12) constraint u_stu_name unique,
stu_dept varchar2(20) constraint n_stu_dept not null,
stu_grade number(1),
stu_class char(1),
stu_gender char(1) constraint c_stu_gender check(stu_gender in('M','F')),
stu_height number(5,2),
stu_weight number(5,2),
constraint p_stu_no primary key(stu_no)
);

create table t_enrol(
sub_no char(3),
stu_no char(9),
enr_grade number(3),
constraint enr_stu_no foreign key(stu_no) references t_student(stu_no),
constraint p_enol primary key(sub_no,stu_no)
);