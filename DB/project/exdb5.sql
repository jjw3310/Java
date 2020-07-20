select stu_no, stu_name, stu_height
from student
where stu_height >
(select stu_height
from student
where stu_name='옥성우');


select sal from emp where ename='BLAKE';
select empno,ename,sal from emp where sal>2875;
select empno,ename,sal from emp where sal >(select sal from emp where ename='BLAKE');

select a.stu_no, a.stu_name, a.stu_height
from student a, student b
where a.stu_height > b.stu_height
and b.stu_name = '옥성우';

select a.empno,a.ename,a.sal
from emp a, emp b
where a.sal>b.sal and b.ename = 'BLAKE';

select *
from student
where stu_weight = (select stu_weight from student where stu_name='박희철') and stu_name <> '박희철';

select * from emp where sal = (select sal from emp where ename='FORD') and ename <> 'FORD';

select * from student where stu_class in (select distinct stu_class from student where stu_dept = '컴퓨터정보') and stu_dept <> '컴퓨터정보';

select * from student where stu_height > all (select avg(stu_height) from student group by stu_dept);


select * from emp
where sal >
    (select avg(sal)
    from emp
    where deptno=30);
    
select * from emp
where sal > any
    (select avg(sal)
    from emp
    group by deptno);
    
select * from emp
where sal >
    (select min(avg(sal))
    from emp
    group by deptno);
    
select * from emp
where sal > all
    (select avg(sal)
    from emp
    group by deptno);
    
select * from emp
where sal >
    (select max(avg(sal))
    from emp
    group by deptno);

select stu_dept, min(stu_height)
from student
group by stu_dept having min(stu_height) >
    (select min(stu_height)
    from student
    where stu_dept = '컴퓨터정보');
    
select stu_dept,stu_no,stu_name,stu_height
from student;

select stu_dept, min(stu_height)
from student
group by stu_dept;

select * from student
where stu_no in (select stu_no from enrol where sub_no = 101);

select * from student a, enrol b
where a.stu_no = b.stu_no and b.sub_no = 101;

select a.stu_no, a.stu_name, b.enr_grade
from student a, enrol b
where a.stu_no = b.stu_no and b.sub_no = 101;

create table test(empno, ename, sal, comm, deptno)
as
    select empno, ename, sal, comm, deptno
    from emp
    where deptno = 1;
    
insert into test values(11, 'apple', 1000, null, 30);
insert into test values(12, 'banana', 2000, 100, 30);
insert into test values(13, 'cheese', 1000, 0, 10);
insert into test values(14, 'dog', 2000, null, 20);
insert into test values(15, 'egg', 1000, 100, 20);

select * from test;

select * from test
where (sal, nvl(comm, -1)) =
            (select sal, nvl(comm, -1)
            from test
            where empno = 11);
            

select * from test
where (sal, nvl(comm, -1)) in (select sal, nvl(comm, -1)
from test
where deptno = 30);

create table a_student
as select *
from student
where stu_dept in ('기계', '전기전자');

create table b_student
as select *
from student
where stu_dept in ('전기전자', '컴퓨터정보');

select * from a_student;
select * from b_student;

select * from a_student
union
select * from b_student;

select * from a_student
union all
select * from b_student;

select * from a_student
intersect
select * from b_student;

select * from a_student
minus
select * from b_student;

create table tmpa_emp(empno, ename, hiredate, sal, deptno)
as
select empno, ename, hiredate, sal, deptno
from emp
where deptno in (10, 20);


create table tmpb_emp (empno, ename, hiredate, sal, deptno)
as
select empno, ename, hiredate, sal, deptno
from emp
where deptno in (20, 30);


select * from tmpb_emp;

commit;

select * from tmpa_emp;



select * from tmpa_emp
union
select * from tmpb_emp;

select * from tmpa_emp
union all
select * from tmpb_emp;

select * from tmpa_emp
intersect
select * from tmpb_emp;

select * from student
natural join enrol;

select a.stu_no, a.stu_name, c.sub_name, b.enr_grade;

select sub_name, stu_no, enr_grade
from subject natural join enrol;


select sub_name, stu_no, enr_grade
from subject join enrol using (sub_no);


select stu_name from student a, enrol b
where a.stu_no=b.stu_no and enr_grade >= 70;


select stu_name
from student join enrol using (stu_no)
where enr_grade >= 60;

select stu_name
from student natural join enrol
where enr_grade <= 70;

select sub_name, sub_prof
from student a, enrol b, subject c
where a.stu_no = b.stu_no and b.sub_no=c.sub_no and a.stu_name ='김인중';

select sub_name, sub_prof
from student a natural join enrol b, enrol b natural join subject c
where a.stu_no = b.stu_no and b.sub_no=c.sub_no and a.stu_name='김인중';


select sub_name, sub_prof
from student join enrol using (stu_no) join subject using (sub_no)
where stu_name = '김인중';


select stu_name
from student a, enrol b, subject c
where a.stu_no = b.stu_no and b.sub_no=c.sub_no and sub_prof = '강종영';

select stu_name
from student join enrol using(stu_no) join subject using(sub_no)
where sub_prof='강종영';

select stu_name
from student natural join enrol natural join subject
where sub_prof='강종영';