--ppt 5��

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
from subject where sub_name = '�ý��ۺм�����');

select * from a_enrol;

delete from a_enrol where stu_no = 20131001; -- 

delete from a_enrol; -- date ����

drop table a_enrol;  -- table ������


delete from b_student;

select * from b_student;

rollback;

desc tmpa_emp;

select * from tmpa_emp;

insert into tmpa_emp(empno, ename, hiredate, sal, deptno)
values (1,'kim',to_date('2013-01-01'),700,40);

insert into tmpa_emp(empno, ename, hiredate, sal, deptno)
values (2, 'kang', to_date('2013-01-01'), 800, 40);

insert into tmpa_emp(empno,ename,hiredate)
values(3,'kho',to_date('2013-01-01'));

insert into tmpa_emp(empno,ename,hiredate,sal,deptno)
values(4,'lee',null,null,null);

select user,sysdate
from dual;

insert into tmpa_emp(empno,ename,hiredate,sal,deptno)
values(5,'park',sysdate,850,20);


insert into tmpb_emp
select * from tmpa_emp
where empno < 10;

delete from tmpa_emp
where deptno = 10;

delete tmpb_emp
where deptno  = (select deptno
from dept where loc = 'DALLAS');

select deptno from dept where loc = 'DALLAS';

select * from tmpb_emp;

delete from tmpa_emp;

select * from tmpa_emp;

rollback;

commit;

update tmpb_emp
set sal = sal + 500
where deptno = (select deptno
                            from dept
                            where dname = 'SALES');
             
select deptno from dept where dname = 'OPERATIONS';

select * from tmpb_emp;



describe student;

select stu_no, stu_name from student;

select * from student where stu_height >= 170;

select * from student where not stu_dept = '��������';

select stu_no, stu_name from student where not stu_dept = '��ǻ������' and stu_grade = 1;

select * from student;

select stu_name, stu_dept from student where stu_no like '2015%';

select stu_no, stu_name from student where stu_dept = '��ǻ������' or stu_dept = '���';

select * from student order by stu_dept, stu_grade desc;

select stu_dept, stu_name
from student
group by stu_dept;

select stu_name from student where stu_class = 'A' and stu_grade <= 2;

select stu_no, stu_name, stu_weight,
    case when stu_gender = 'F' then stu_weight-5
            when stu_gender = 'M' then stu_weight+5
        end "stu_change"
    from student;

commit;