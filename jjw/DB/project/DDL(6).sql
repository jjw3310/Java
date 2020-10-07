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

desc t_student;
drop table t_student;
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
constraint p_enol primary key(sub_no,stu_no));

desc t_enrol;
desc t_student;
select *
from user_constraints   -- 제약조건 확인
where table_name = 'T_STUDENT';

alter table t_enrol
drop constraint enr_stu_no cascade; --  제약 조건의 삭제

constraint enr_stu_no foreign key(stu_no) refera


select constraint_name, constraint_type, table_name
from user_constraints;

select constraint_name, table_name, column_name
from user_cons_columns;

alter table t_enrol drop constraint enr_stu_no cascade;

select * from user_constraints where table_name = 'T_ENROL';

alter table t_student disable constraint n_stu_dept;

select * from user_constraints where table_name = 'T_STUDENT';

alter table t_student enable constraint n_stu_dept;

drop table emp01;

create table emp01(
    empno number(4),
    ename varchar2(10),
    job varchar2(9),
    deptno number(2)
);


insert into emp01
values(null, null, '사원', 30);

select * from emp01;

drop table emp02;

create table emp02(
    empno number(4),
    ename varchar2(10),
    job varchar2(9),
    deptno number(2)
);

insert into emp02
values(1000,'허준','사원',30);

insert into emp02
values(1000,'홍길동','과장',20);

create table emp03(
    empno number(4) unique,
    ename varchar2(10) not null,
    job varchar2(9),
    deptno number(2)
);
    
insert into emp03
values(1000,'허준','사원',30);

select * from emp03;

update emp03
set ename = '허준';

insert into emp03
values(1000, '홍길동', '과장', 20);

insert into emp03
values(null, '안중근', '과장', 20);

create table emp04(
    empno number(4) constraint emp04_empno_uk unique,
    ename varchar2(10) constraint emp04_ename_nn not null,
    job varchar2(9),
    deptno number(2)
    );
    
select empno from emp04;

select constraint_name, constraint_type, table_name
from user_constraints
where table_name in('EMP04');

insert into emp04
values(1000, '허준', '사원', 30);

select * from emp04;

insert into emp04
values(1000, '홍길동', '과장', 20);

create table emp05(
    empno number(4) constraint emp05_empno_pk primary key,
    ename varchar2(10) constraint emp05_ename_nn not null,
    job varchar2(9),
    deptno number(2)
);

select constraint_name, constraint_type, table_name
from user_constraints
where table_name in('EMP05');

insert into emp05
values(1000, '허준', '사원', 30);

select * from emp05;

insert into emp05
values(1000, '홍길동', '과장', 20);


create table emp07(
    empno number(4)
        constraint emp07_empno_pk primary key,
    ename varchar2(10)
        constraint emp07_ename_nn not null,
    sal number(7,2)
        constraint emp07_sal_ck check(sal between 500 and 5000),
    gender varchar2(1)
    constraint emp07_gender_ck check(gender in('M', 'F'))
    );
    
    desc emp07;
    
    select constraint_name, constraint_type, table_name
    from user_constraints
    where table_name in('EMP07');
    
    insert into emp07
    values (1000, '허준', 200,'M');
  
insert into emp07
values (1000, '허준', 600,'M');
    
select * from emp07;

create table dept01(
    deptno number(2) primary key,
    dname varchar2(14),
    loc varchar2(13) default '서울'
    );
    
insert into dept01(deptno, dname)
values(10, '경리부');

select * from dept01;

insert into dept01(deptno, dname)
values(42, '홓홓');

delete dept01;

create table emp08(
    empno number(4) PRIMARY KEY,
    ename varchar2(10) NOT NULL,
    job varchar2(9) UNIQUE,
    deptno number(2) REFERENCES DEPT(DEPTNO)
);

select * from emp08;

select constraint_name, constraint_type, r_constraint_name, table_name
from user_constraints
where table_name in('EMP08');

select * from user_constraints;

create table emp09(
    empno number(4),
    ename varchar2(10) NOT NULL,
    job varchar2(9),
    deptno number(2),
    PRIMARY KEY(EMPNO),
    UNIQUE(JOB),
    FOREIGN KEY(DEPTNO) REFERENCES DEPT(DEPTNO)
);

create table emp11(
    empno number(4),
    ename varchar2(10) CONSTRAINT EMP03_ENAME_NN NOT NULL,
    job varchar2(9),
    deptno number(2),
    CONSTRAINT EMP11_EMPNO_PK PRIMARY KEY(EMPNO),
    CONSTRAINT EMP11_JOB_UK UNIQUE(JOB),
    CONSTRAINT EMP11_DEPTNO_FK FOREIGN KEY(DEPTNO)
                    REFERENCES DEPT(DEPTNO)
);

select constraint_name, constraint_type, r_constraint_name, table_name
from user_constraints
where table_name in('EMP11');

create table member01(
    name varchar2(10),
    address varchar2(30),
    hphone varchar2(16),
    CONSTRAINT MEMBER01_COMBO_PK PRIMARY KEY(NAME, HPHONE)
);

select constraint_name, constraint_type, r_constraint_name, table_name
from user_constraints
where table_name in('MEMBER01');

select constraint_name, table_name, column_name
from user_cons_columns
where table_name in('MEMBER01');

desc user_cons_columns;

desc user_constraints;

select constraint_name, constraint_type, r_constraint_name, table_name
from user_constraints
where table_name in('EMP01');

alter table emp01
add constraint emp01_empno_pk primary key(empno);

select * from emp01;

desc emp01;

alter table emp01
add constraint emp01_deptno_fk
foreign key(deptno) references dept(deptno);

select constraint_name, constraint_type, r_constraint_name, table_name
from user_constraints
where table_name in('EMP01');

delete emp01;

alter table emp01
modify ename constraint emp01_ename_nn not null;


alter table emp01
drop primary key;

rollback;

select constraint_name, constraint_type, r_constraint_name, table_name
from user_constraints
where table_name in('EMP01');

--

create or replace view v_student1
as
select * from student where stu_dept = '컴퓨터정보';

select * from v_student1;

create or replace view v_emp1   -- emp 테이블에서 deptno 가 20인 데이터를 수집하여 가상의 테이블(v_emp1)를 만드시오.
as
select * from emp where deptno = 20;

select * from v_emp1;


create or replace view v_enrol1
as
select sub_name, a.sub_no, stu_no, enr_grade
from enrol a, subject b
where a.sub_no = b.sub_no;

select * from v_enrol1;

create or replace view v_emp2
as
select empno,ename,mgr,hiredate,sal,dept.dname
from emp, dept
where emp.deptno = dept.deptno;

select * from v_emp2;

select stu_no, stu_name, a.stu_dept, stu_height
from student a, (select stu_dept, avg(stu_height)
                            as avg_height
                            from student
                            group by stu_dept) b
where a.stu_dept = b.stu_dept
and a.stu_height > b.avg_height;

select a.empno,a.ename,a.sal,c.dname
from emp a, (select deptno, max(sal) maxsal
                    from emp
                    group by deptno) b, dept c
where a.deptno=b.deptno and a.sal=b.maxsal and a.deptno = c.deptno
order by a.deptno;

select stu_no, stu_name, stu_height
from (select stu_no, stu_name, stu_height
            from student
            where stu_height is not null
            order by stu_height desc)
where rownum <= 5;

select a.empno, a.ename, a.sal
from emp a, (select max(sal) maxsal
                    from emp) b
where rownum <= 5;


create index i_stu_name on student(stu_name);
create index i_stu_no_name on student(stu_no, stu_name);
create unique index k_stu_name on student(stu_name);
create index i_stu_weight on student(stu_weight-5);


select * from user_indexes
where table_name = 'STUDENT';


drop index i_stu_name;


 -- 시퀀스 (Sequence) (자동 번호매김)

create sequence seq1
increment by 2
start with 1000
maxvalue 10000;

select seq1.nextval from dual;

select seq1.currval from dual;

select * from emp where deptno=30;

create or replace view v_emp30
as
select empno,ename,sal,deptno
from emp
where deptno=30;

select * from v_emp30;

select * from emp;

create or replace view v_emp30
as
select empno,ename,job,sal
from emp
where deptno=10;

select * from v_emp30;

create sequence seq2
increment by 1
start with 1
maxvalue 100;

select seq2.nextval from dual;

select seq2.currval from dual;

alter sequence seq2
increment by 2;

drop sequence seq2;

create sequence emp_seq
start with 1
increment by 1
maxvalue 100000;

select emp_seq.nextval from dual;

select emp_seq.currval from dual;

create table emp12(
empno number(4) primary key,
ename varchar(10),
hiredate date
);

select constraint_name, constraint_type, table_name
from user_constraints
where table_name in('EMP12');

insert into emp12
values(emp_seq.nextval, '홍길동', SYSDATE);

insert into emp12
values(emp_seq.nextval, '강감찬', SYSDATE);

select * from emp12;

select sequence_name, min_value, max_value, increment_by
from user_sequences;

create or replace view view_hire
as
select empno, ename,hiredate
from emp
order by hiredate;

select rownum, empno, ename, hiredate
from view_hire
where rownum <= 5;

select rownum, empno, ename, hiredate
from (select empno,ename,hiredate
            from emp
            order by hiredate)
where rownum <= 5;


create table product
(p_code char(3) not null,
p_name varchar2(30),
p_cost number,
p_group varchar2(30),
constraint p_code_pk primary key(p_code)
);

select * from product;

desc product;

insert into product values('101', '19인치 모니터', 150000, '모니터');
insert into product values('102', '22인치 모니터', 200000, '모니터');
insert into product values('103', '25인치 모니터', 260000, '모니터');
insert into product values('201', '유선마우스', 7000, '마우스');
insert into product values('202','무선마우스', 18000, '마우스');
insert into product values('301', '유선키보드', 8000, '키보드');
insert into product values('302', '무선키보드', 22000, '키보드');
insert into product values('401', '2채널 스피커', 10000, '스피커');
insert into product values('402', '5.1채널 스피커', 120000, '스피커');

select * from product;

alter table product
add (bigo varchar2(10));

desc product;

alter table product
modify (bigo varchar2(20));

alter table product
drop (bigo);

rename product to product1;

truncate table product1;

select * from product1;

drop table product1;

create or replace view v_emp
as
select e.ename, d.dname
from emp e, dept d
where e.deptno = d.deptno;

select * from v_emp;

select e.deptno, d.dname,e.sal
from (select deptno, MAX(sal) sal
         from emp
        group by deptno) e, dept d
where e.deptno = d.deptno;