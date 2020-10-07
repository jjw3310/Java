select 2+to_number('2') from dual;
select empno, ename, to_char(hiredate, 'yyyy-mm') as �Ի��� from emp;
select sysdate, to_char(sysdate, 'yyyy'), to_char(sysdate, 'yy') from dual;
select sysdate, to_char(sysdate, 'mm'), to_char(sysdate, 'month') from dual; -- month �� ���� ���
select sysdate, to_char(sysdate, 'dd'), to_char(sysdate, 'day') from dual; -- day �� *���Ϸ� ���
select sysdate, to_char(sysdate, 'yyyy-mm-dd:HH24:mi:ss'), to_char(sysdate, 'month') from dual; -- ��¥�� �ð� ���
select to_char(1234, '9999'), to_char(1234, '099999'), to_char(1234, '$9999'), to_char(1234,'9999.99'), to_char(12345,'99,999') from dual;
select to_char(to_number(1234.5678), '9999.999') from dual;
select to_char(to_number(1234.5678), '999.999') from dual;
select empno, ename from emp where hiredate = to_date('1980-12-17','yy-mm-dd');
select nvl(stu_height, 0) from student;   --?? B�� �ٲ۴�?
select ename, comm, nvl(comm, 0), nvl(comm, 100) from emp where deptno = 30;
select ename, sal, comm, nvl2(comm, sal+comm, sal) from emp;  -- null�� ä���ִ� �Լ� comm �߿� null�̸� sal+comm, null�� �ƴϸ� sal ���
select nvl(nullif('A', 'A'), '�� ��')  -- �μ� 1, 2 ���ؼ� ������ '�� ��' ��� �ٸ��� �μ� 1 ���
from dual;
select coalesce(null, null, 10, 100, null) from dual;
select coalesce('A', 'B', 'C'), coalesce(null, 'B', 'c'), coalesce(null, null, 'C'),
COALESCE(NULL, NULL, 'C'), coalesce(null, null, null) from dual; -- �μ� 1���� null�� �ƴϸ� ����ϰ� ��� �μ��� null�̸� null ���
select empno, ename, sal,
    case job when 'SALESMAN' then sal * 1.1
    when 'CLERK' then sal * 1.15
    when 'MANAGER' then sal * 1.2
    else sal
    end as �޿��λ�
    from emp;  -- ������ �޿��λ� �ý���

select empno, ename, sal,
    case when sal between 1 and 1000 then 'LEVEL 1'
            when sal between 1001 and 2000 then 'LEVEL 2'
            when sal between 2001 and 3000 then 'LEVEL 3'
            when sal between 3001 and 4000 then 'LEVEL 4'
            when sal > 4001 then 'LEVEL 5'
    end "LEVEL"
from emp
order by sal desc;

select empno, ename, job, sal,
decode(job, 'SALESMAN', sal * 1.1, 
'CLERK', sal *1.15,
'MANAGER', sal * 1.2, sal) as �λ�ȱ޿�
from emp;

select max(enr_grade), min(enr_grade) from enrol;
select min(stu_weight), max(stu_weight)
from student
where stu_dept = '���';
select * from student;

select count(*), count(stu_height) from student;
select count(stu_dept), count(distinct stu_dept) from student;

select sum(stu_weight), to_char(avg(stu_weight), '9999.99') from student where stu_dept = '��ǻ������';
select count(*) as �л�, sum(stu_height) as ������,
count(stu_height) "�ش��л���", avg(stu_height) "��ս���"
from student;


select count(*) from emp;
select sum(sal) from emp;
select to_char(avg(sal),'99999.99') from emp;
select min(sal) from emp;
select max(sal) from emp;


select count(distinct job) as "������" from emp;

select sysdate-100 from dual;
select sysdate+100 from dual;

select greatest(10,30,50,80) from dual;
select least(10,30,50,80) from dual;
select rownum, empno, ename from emp;

select sum(sal), to_char(avg(sal),'9999.99')
from emp
where job='MANAGER';  --�Ŵ��� ��å�� �޿� �հ�� �޿� ���




-- �߰�





select stu_dept, count(*)
from student
where stu_weight >= 50
group by stu_dept;  -- ���� �׷�ȭ ���Ѽ� �ش� ���ǿ� �´� �ο� ���

select * from emp;
select deptno, sum(sal) from emp group by deptno;  -- �׷����� ��� ���

select stu_dept, stu_grade, count(*)
from student
group by stu_dept, stu_grade;

select stu_dept, stu_grade, count(*)
from student
group by stu_dept, stu_grade
order by stu_grade, stu_dept desc;


select stu_grade, avg(stu_height)
from student
where stu_dept = '���'
group by stu_grade having avg(stu_height) >= 160;

select stu_dept, max(stu_height)
from student
group by stu_dept having max(stu_height) >= 175;

select to_char(max(abg(stu_height)),'999.99')
from student group by stu_dept;

select * from emp;

select deptno, count(*) from emp where sal >= 2000 group by deptno;


select deptno, sum(sal) from emp where job <> 'SALESMAN' group by deptno having sum(sal) >= 6500;

select deptno, sum(sal) from emp where job <> 'SALESMAN' group by deptno having max(sal) >= 4000;

select * from emp;
describe emp;
select deptno, dname from dept;
select dname, loc from dept;
select sal, comm from emp;
select distinct ename, hiredate from emp order by hiredate ASC;