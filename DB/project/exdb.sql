20200716
describe student;
describe enrol;
describe subject;
select * from student;
select stu_no,stu_name from student;
select stu_dept from student;
select distinct stu_dept from student; --�ߺ�����
select distinct stu_grade,stu_class from student;
select stu_no,sub_no,enr_grade,enr_grade+10 from enrol; --enr_grade�� +10 �׸� �߰�
select stu_no as ID, stu_name as name from student; -- stu_no �� ID�� , stu_name�� name����
select stu_no as "�й�", stu_name as "�̸�" from student;
select stu_no "�й�", stu_name "�̸�" from student;
select stu_dept||stu_name as �а����� from student; -- �а����� �׸� �ΰ��� �׸� ������ �̾���̱�
select ename||job as �������� from emp;
select stu_dept||','||stu_name||'�Դϴ�' as �а����� from student; -- ���ڿ��Ѻ��Դϴ� ���
select ename as "�̸�",sal as "����",sal*12 as"����" from emp; -- ���޵����ͷ� ���������� ���
select ename||'''s job is '||job "NAME AND JOB" from emp; -- \ ��� '�� ��ȣ ���
select stu_name, stu_dept, stu_grade, stu_class
from student
where stu_dept = '��ǻ������';  -- if�� ���� where ���
select ename, job, sal, deptno from emp where job = 'SALESMAN';
select stu_name, stu_dept, stu_grade, stu_class
from student
where stu_dept = '��ǻ������' and stu_grade = 2; -- ���ǹ��� and, or �� ������ ��� ����
select *
from student
where stu_weight between 60 and 70;  -- 60�� 70 ���̿� �ش��ϴ� ��
select * from emp;
select * from emp where sal between 1000 and 1500;
select * from emp where sal >= 1000 and sal <= 1500; -- ������ ��� ����
select ENAME from emp where deptno = 10 and job = 'MANAGER';
select * from student where stu_no between '20140001' and '20149999';
select stu_no, stu_name, stu_dept from student where stu_name like '��%'; --like �� ������ ������ ���� ��� ����ϰ� %�� 0�� �̻��� ���� _�� 1�� �̻��� ����
select empno, ename, job from emp where ename like 'J%';
select stu_no, stu_name, stu_dept from student where stu_name like '_��%';
select * from student where stu_no like '2014%';
select empno,ename,job from emp where ename like '_L%';
select * from emp where not deptno = 10;  -- emp ���̺��� DEPTNO�� 10�� �μ��� �ƴ� ���
select * from emp where deptno <> 10; -- not equals <>
select * from emp where sal < 900 or sal > 4000;
select * from student where stu_height > 170 and stu_weight >= 80;
select stu_name, stu_height/30.46 from student;
select stu_no, stu_name, stu_height from student where stu_height is null; -- Ű�� null�� �л��� ����
select stu_no, stu_name, stu_height from student where stu_height is not null; -- not
select empno,ename,comm from emp where comm is null;
select stu_no, stu_name from student where stu_dept in ('��ǻ������','���');  -- in ������
select stu_no, stu_name from student where stu_dept = '��ǻ������' or stu_dept = '���'; -- same
select empno, deptno from emp where deptno in (10, 30);
select stu_no, stu_name
from student
order by stu_no; -- ASC : �������� , DESC : ��������
select stu_no, stu_name from student order by stu_no desc; -- �й� ������������ ����
select * from emp order by hiredate desc;
select stu_no, stu_name, stu_dept, stu_weight-5 as target
from student
order by target;   -- Ÿ������ ����
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by 4;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_weight-5;
select empno, ename, deptno, sal*12 as annualsal from emp order by annualsal; --���� ��� �� ���� ���� ����
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_dept, target;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_dept, target;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_dept, stu_weight-5 desc;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_height;
select empno,ename,deptno,sal*12 as annualsal from emp order by deptno, annualsal;
select empno,ename,deptno,sal*12 as annualsal from emp order by deptno, annualsal desc;
select empno,ename,deptno,sal from emp order by hiredate;  -- ???? ��� ����

select round(345.678), round(345.678, 0),
round(345.678, 1), round(345.678, -1)
from dual; -- �ݿø�
select trunc(997.654, 2) "trunc1", trunc(997.654, 0) "trunc2", trunc(997.654, -1)  "trunc3" from dual; -- ����(trim)
select mod(10, 3), abs(-100), floor(123.456), power(2, 3) from dual; -- mod = ������ abs = ���밪 floor = �Ҽ��� ���� power = ���� 

select upper('korea') from dual;
select lower('KOREA') from dual;
select ename,initcap(ename) "INITCAP" from emp;  -- as ���� �ʾƵ� ��.

select ename,length(ename) from emp;  -- ���� ����
select stu_name,length(stu_name) from student; -- �ѱ۵� 1����Ʈ
select concat(ename,job) from emp where deptno=10; -- emp �����Ϳ��� deptno�� 10�� ����� �̸��� ������ �ٿ��� ���
select substr('abcde',3,2),substr('abcde',-4,2) from dual; -- 3,2 �� �տ��� 3��°���� 2���� -4,2�� �ڿ��� 4��°���� 2����
select lpad(ename,10,'*') from emp; -- 10�� ������ �Ҵ��ϰ� �� ������ ���ʺ��� *�� ä����
select rpad(ename,10,'*') from emp; -- 10�� ������ �Ҵ��ϰ� �� ������ �����ʺ��� ä����
select ltrim(' abc ') from dual; -- ���� ��������
select rtrim(' abc ') from dual; -- ������ ��������
select trim(' abc ') from dual; -- ���� ��������
select ename,ltring(ename, 'C') from emp where deptono = 10; -- ���� C ���� ����
select ename,rtrim(ename, 'R') from emp where deptno = 10;  -- . ��� ,���� ��ɾ� ����, ������ R ���� ����
select ename,replace(ename,substr(ename,1,2),'**') "replace" from emp where deptno = 10; -- ename�� ù��°���� 2���ڸ� **�� �������

select sysdate from dual; -- ���糯¥ ���
select next_day(sysdate,'��') from dual; -- �ٰ����� ����� ��¥ ���
select next_day(sysdate,7) from dual;  -- ???

select months_between('14/10/30','14/08/30') from dual;  -- ��� ���̰� ������ ���ڿ��� ���ڸ� ���� �˰���.
select months_between('14/08/31','14/09/30') from dual;

select sysdate,add_months(sysdate, 1) from dual; -- ���� ��¥�� 1���� �߰� ���
select sysdate,last_day(sysdate) from dual; -- �̹� ���� ������ �� ��� 
select sysdate,round(sysdate),trunc(sysdate) from dual;  --round�� ������ �������� ������ ������ ������ ��� trunc�� ������ �������� ��¥ ���