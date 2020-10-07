describe emp;
select ename, sal*6 from emp;
select empno as 사원번호, ename as 이름, deptno as 부서번호, hiredate as 입사일자 from emp; 
select hiredate||'에 입사한'||ename||'입니다.' "입사일자와 사원명" from emp;
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
select stu_dept||'과 '||stu_name||'입니다.' from student;
select stu_no, stu_name from student where stu_dept = '기계';

select stu_name from student where stu_dept='컴퓨터정보' and stu_grade=1;
select * from student where stu_gender = 'F' and stu_weight <= 60;
select stu_no, stu_name from student where stu_height >= 160 and stu_height <= 170;
select stu_no, stu_name from student where stu_name like '김%';
select stu_name from student where stu_name like '%인%';

select stu_name from student where stu_height is null; -- null 은 = 대신 is
select stu_no, stu_name from student order by stu_name;
select stu_name, substr(stu_name,1,2) from student;
select rpad(stu_name,15,'&') from student;
select stu_no, stu_name,nvl(to_char(stu_height),'입력요망') as stu_height from student;-- 신장이 널값인 경우 '입력요망'으로 바꾸어 학번, 이름을 검색하시오.

select stu_name, instr(stu_name, '김') from student;
select stu_no, stu_name, stu_height, round(stu_height, -1) from student;
select stu_gender, nvl(nullif(stu_gender,'M'), '남자') from student;
select max(stu_weight), min(stu_weight), max(stu_height), min(stu_height) from student;
select stu_grade, count(*) from student group by stu_grade;

select stu_dept, stu_grade, avg(stu_weight) from student group by stu_dept, stu_grade order by stu_grade;
select stu_dept, count(*) from student group by stu_dept order by count(*) desc;  -- order by 2 desc 와 같음. 2번째 항을 기준으로 
select stu_dept, round(avg(stu_height), 0) from student group by stu_dept order by 2 desc;
select concat(stu_name, stu_dept) from student;
select stu_name, substr(stu_name,1,2) from student;

select stu_dept, length(stu_dept) from student;
select stu_dept, instr(stu_dept, '기') from student; -- 학생들의 학과에 '기'가 몇 번째에 있는지 검색하시오.

