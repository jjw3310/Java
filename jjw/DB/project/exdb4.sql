-- 4

select student.*, enrol.*
from student
cross join enrol;

select emp.*, dept.*
from emp
cross join dept;

select student.stu_no, stu_name, stu_dept, enr_grade
from student, enrol
where student.stu_no = enrol.stu_no;

select empno, ename, job, emp.deptno, dname, dept.deptno
from emp,dept
where emp.deptno = dept.deptno;

select empno, ename, job, deptno, dname
from emp natural join dept; -- join 의 한 방식

select empno, ename, job, deptno, dname
from emp join dept using(deptno);

select empno, ename, job, emp.deptno, dname
from emp join dept on emp.deptno = dept.deptno;

select student.stu_no, stu_name
from student, enrol
where student.stu_no = enrol.stu_no
and sub_no = 101;

select loc from dept;

select empno, ename from emp, dept where emp.deptno = dept.deptno and dept.loc = 'CHICAGO';
select empno, loc, ename from emp, dept where loc = 'CHICAGO';


select student.stu_no, stu_name
from student, enrol
where student.stu_no = enrol.stu_no
and sub_no = 101 or sub_no = 102;

select stu_no, stu_name
from student natural join enrol
where sub_no = 101 or sub_no = 102;

select stu_no, stu_name
from student join enrol using(stu_no)
where sub_no = 101 or sub_no = 102;

select student.stu_no, stu_name
from student join enrol on student.stu_no = enrol.stu_no
where sub_no = 101 or sub_no = 102;


select student.stu_no, stu_name, sub_name
from student, enrol, subject
where student.stu_no = enrol.stu_no
and enrol.sub_no = subject.sub_no
and enrol.sub_no = 101;

select student.stu_no, stu_name, sub_name
from student, enrol, subject
where student.stu_no = enrol.stu_no
and enrol.sub_no = subject.sub_no
and enrol.sub_no = 101;

select empno, ename, sal, grade, losal, hisal
from emp, salgrade
where sal between losal and hisal;

select * from emp;


select a.empno as 사원번호, a.ename as 사원이름,
b.empno as 상급자사원번호, b.ename as 상급자이름
from emp a, emp b
where a.mgr = b.empno;  -- 같은 테이블 간의 조인 ?? 왜 같은 테이블을 조인함? 아 상급자 검색

select a.empno as 사원번호, a.ename as 사원이름,
b.empno as 상급자사원번호, b.ename as 상급자이름
from emp a join emp b
on a.mgr=b.empno;


select a.*, sub_name
from enrol a, subject b
where a.sub_no = b.sub_no
order by 1;

select a.*, sub_name
from enrol a right outer join subject b
on a.sub_no = b.sub_no
order by 1;


select empno, ename, dept.deptno, dname, loc
from emp right outer join dept
on emp.deptno = dept.deptno;

select a.empno as 사원번호, a.ename as 사원이름,
b.empno as 상급자사원번호, b.ename as 상급자이름
from emp a left outer join emp b
on a.mgr=b.empno;

select a.empno as 사원번호, a.ename as 사원이름,
b.empno as 상급자사원번호, b.ename as 상급자이름
from emp a full outer join emp b
on a.mgr = b.empno;

select ename from emp order by ename;

select RANK('SMITH') WITHIN GROUP (ORDER BY ename) "RANK"
from emp;

select rank('smith') within group (order by ename) "rank" from emp;

select empno, ename, sal,
RANK() OVER (ORDER BY sal) as RANK_ASC
from emp;

select empno, ename, sal, rank() over (order by sal desc) as RANK_ASC from emp;

select empno, ename, sal,
RANK() OVER (ORDER BY sal DESC) "RANK"
from emp
where deptno = 10;


select empno, ename, job, sal,
RANK() OVER (ORDER BY sal DESC) sal_rank,
DENSE_RANK() OVER (ORDER BY sal DESC) sal_dense_rank,
ROW_NUMBER() OVER (ORDER BY sal DESC) sal_row_num
from emp;   -- 랭킹 공통 순위 표시하는 함수 3가지.