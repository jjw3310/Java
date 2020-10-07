20200716
describe student;
describe enrol;
describe subject;
select * from student;
select stu_no,stu_name from student;
select stu_dept from student;
select distinct stu_dept from student; --중복제거
select distinct stu_grade,stu_class from student;
select stu_no,sub_no,enr_grade,enr_grade+10 from enrol; --enr_grade에 +10 항목 추가
select stu_no as ID, stu_name as name from student; -- stu_no 를 ID로 , stu_name을 name으로
select stu_no as "학번", stu_name as "이름" from student;
select stu_no "학번", stu_name "이름" from student;
select stu_dept||stu_name as 학과성명 from student; -- 학과성명 항목에 두가지 항목 데이터 이어붙이기
select ename||job as 성명직무 from emp;
select stu_dept||','||stu_name||'입니다' as 학과성명 from student; -- 전자옥한빛입니다 출력
select ename as "이름",sal as "월급",sal*12 as"연봉" from emp; -- 월급데이터로 연봉데이터 출력
select ename||'''s job is '||job "NAME AND JOB" from emp; -- \ 대신 '로 기호 출력
select stu_name, stu_dept, stu_grade, stu_class
from student
where stu_dept = '컴퓨터정보';  -- if문 같이 where 사용
select ename, job, sal, deptno from emp where job = 'SALESMAN';
select stu_name, stu_dept, stu_grade, stu_class
from student
where stu_dept = '컴퓨터정보' and stu_grade = 2; -- 조건문엔 and, or 등 연산자 사용 가능
select *
from student
where stu_weight between 60 and 70;  -- 60과 70 사이에 해당하는 값
select * from emp;
select * from emp where sal between 1000 and 1500;
select * from emp where sal >= 1000 and sal <= 1500; -- 연산자 사용 가능
select ENAME from emp where deptno = 10 and job = 'MANAGER';
select * from student where stu_no between '20140001' and '20149999';
select stu_no, stu_name, stu_dept from student where stu_name like '김%'; --like 는 정보의 파편이 있을 경우 사용하고 %는 0개 이상의 문자 _는 1개 이상의 문자
select empno, ename, job from emp where ename like 'J%';
select stu_no, stu_name, stu_dept from student where stu_name like '_수%';
select * from student where stu_no like '2014%';
select empno,ename,job from emp where ename like '_L%';
select * from emp where not deptno = 10;  -- emp 테이블에서 DEPTNO가 10번 부서가 아닌 경우
select * from emp where deptno <> 10; -- not equals <>
select * from emp where sal < 900 or sal > 4000;
select * from student where stu_height > 170 and stu_weight >= 80;
select stu_name, stu_height/30.46 from student;
select stu_no, stu_name, stu_height from student where stu_height is null; -- 키가 null인 학생의 정보
select stu_no, stu_name, stu_height from student where stu_height is not null; -- not
select empno,ename,comm from emp where comm is null;
select stu_no, stu_name from student where stu_dept in ('컴퓨터정보','기계');  -- in 연산자
select stu_no, stu_name from student where stu_dept = '컴퓨터정보' or stu_dept = '기계'; -- same
select empno, deptno from emp where deptno in (10, 30);
select stu_no, stu_name
from student
order by stu_no; -- ASC : 오름차순 , DESC : 내림차순
select stu_no, stu_name from student order by stu_no desc; -- 학번 내림차순으로 정렬
select * from emp order by hiredate desc;
select stu_no, stu_name, stu_dept, stu_weight-5 as target
from student
order by target;   -- 타겟으로 정렬
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by 4;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_weight-5;
select empno, ename, deptno, sal*12 as annualsal from emp order by annualsal; --연봉 계산 후 연봉 기준 정렬
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_dept, target;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_dept, target;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_dept, stu_weight-5 desc;
select stu_no, stu_name, stu_dept, stu_weight-5 as target from student order by stu_height;
select empno,ename,deptno,sal*12 as annualsal from emp order by deptno, annualsal;
select empno,ename,deptno,sal*12 as annualsal from emp order by deptno, annualsal desc;
select empno,ename,deptno,sal from emp order by hiredate;  -- ???? 요게 뭐지

select round(345.678), round(345.678, 0),
round(345.678, 1), round(345.678, -1)
from dual; -- 반올림
select trunc(997.654, 2) "trunc1", trunc(997.654, 0) "trunc2", trunc(997.654, -1)  "trunc3" from dual; -- 절삭(trim)
select mod(10, 3), abs(-100), floor(123.456), power(2, 3) from dual; -- mod = 나머지 abs = 절대값 floor = 소숫점 절삭 power = 제곱 

select upper('korea') from dual;
select lower('KOREA') from dual;
select ename,initcap(ename) "INITCAP" from emp;  -- as 쓰지 않아도 됨.

select ename,length(ename) from emp;  -- 문자 길이
select stu_name,length(stu_name) from student; -- 한글도 1바이트
select concat(ename,job) from emp where deptno=10; -- emp 데이터에서 deptno가 10인 사람의 이름과 직업을 붙여서 출력
select substr('abcde',3,2),substr('abcde',-4,2) from dual; -- 3,2 는 앞에서 3번째에서 2글자 -4,2는 뒤에서 4번째에서 2글자
select lpad(ename,10,'*') from emp; -- 10개 공간을 할당하고 빈 공간의 왼쪽부터 *로 채워라
select rpad(ename,10,'*') from emp; -- 10개 공간을 할당하고 빈 공간을 오른쪽부터 채워라
select ltrim(' abc ') from dual; -- 왼쪽 공백제거
select rtrim(' abc ') from dual; -- 오른쪽 공백제거
select trim(' abc ') from dual; -- 양쪽 공백제거
select ename,ltring(ename, 'C') from emp where deptono = 10; -- 왼쪽 C 문자 제거
select ename,rtrim(ename, 'R') from emp where deptno = 10;  -- . 대신 ,으로 명령어 접속, 오른쪽 R 문자 제거
select ename,replace(ename,substr(ename,1,2),'**') "replace" from emp where deptno = 10; -- ename의 첫번째부터 2글자를 **로 변경출력

select sysdate from dual; -- 현재날짜 출력
select next_day(sysdate,'토') from dual; -- 다가오는 토요일 날짜 출력
select next_day(sysdate,7) from dual;  -- ???

select months_between('14/10/30','14/08/30') from dual;  -- 몇개월 차이가 나는지 전자에서 후자를 빼는 알고리즘.
select months_between('14/08/31','14/09/30') from dual;

select sysdate,add_months(sysdate, 1) from dual; -- 현재 날짜에 1개월 추가 출력
select sysdate,last_day(sysdate) from dual; -- 이번 달의 마지막 날 출력 
select sysdate,round(sysdate),trunc(sysdate) from dual;  --round는 자정을 기준으로 정오가 지나면 다음날 출력 trunc는 자정을 기준으로 날짜 출력