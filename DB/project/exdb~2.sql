describe emp;
select ename, sal*6 from emp;
select empno as �����ȣ, ename as �̸�, deptno as �μ���ȣ, hiredate as �Ի����� from emp; 
select hiredate||'�� �Ի���'||ename||'�Դϴ�.' "�Ի����ڿ� �����" from emp;
select ename from emp where deptno=10;
select empno, ename from emp where sal >= 2000;
select * from emp where not deptno=10;
select * from emp where ename = 'WARD';
select empno, ename from emp where job = 'CLERK';
select empno, ename from emp where sal >= 2000 and deptno = 30;
select empno, ename from emp where between sal(1000, 2500);
select empno, ename from emp where sal >= 1000 and sal <= 2500;


-- student, subject, enrol

desc student;
desc subject;
desc enrol;
select * from student;
select stu_no, stu_name, stu_grade, stu_class from student;
select distinct stu_dept from student;
select stu_dept||'�� '||stu_name||'�Դϴ�.' from student;
select stu_no, stu_name from student where stu_dept = '���';

select stu_name from student where stu_dept='��ǻ������' and stu_grade=1;
select * from student where stu_gender = 'F' and stu_weight <= 60;
select stu_no, stu_name from student where stu_height >= 160 and stu_height <= 170;
select stu_no, stu_name from student where stu_name like '��%';
select stu_name from student where stu_name like '%��%';

select stu_name from student where stu_height is null; -- null �� = ��� is
select stu_no, stu_name from student order by stu_name;
select stu_name, substr(stu_name,1,2) from student;
select rpad(stu_name,15,'&') from student;
select stu_no, stu_name,nvl(to_char(stu_height),'�Է¿��') as stu_height from student;-- ������ �ΰ��� ��� '�Է¿��'���� �ٲپ� �й�, �̸��� �˻��Ͻÿ�.

select stu_name, instr(stu_name, '��') from student;
select stu_no, stu_name, stu_height, round(stu_height, -1) from student;
select stu_gender, nvl(nullif(stu_gender,'M'), '����') from student;
select max(stu_weight), min(stu_weight), max(stu_height), min(stu_height) from student;
select stu_grade, count(*) from student group by stu_grade;

select stu_dept, stu_grade, avg(stu_weight) from student group by stu_dept, stu_grade order by stu_grade;
select stu_dept, count(*) from student group by stu_dept order by count(*) desc;  -- order by 2 desc �� ����. 2��° ���� �������� 
select stu_dept, round(avg(stu_height), 0) from student group by stu_dept order by 2 desc;
select concat(stu_name, stu_dept) from student;
select stu_name, substr(stu_name,1,2) from student;

select stu_dept, length(stu_dept) from student;
select stu_dept, instr(stu_dept, '��') from student; -- �л����� �а��� '��'�� �� ��°�� �ִ��� �˻��Ͻÿ�.

