-- 8장 프로시저와 함수

set serveroutput on;

create procedure test1
(v_sub_name in subject.sub_name%type,
v_sub_prof in subject.sub_prof%type,
v_sub_grade in subject.sub_grade%type,
v_sub_dept in subject.sub_dept%type)
is
v_sub_no subject.sub_no%type;
begin
    select max(sub_no)
        into v_sub_no
        from subject;
    v_sub_no := to_number(v_sub_no)+1;
    
    insert
        into subject
        values(v_sub_no, v_sub_name, v_sub_prof, v_sub_grade, v_sub_dept);
    commit;
end test1;
/

select * from subject;

execute test1('컴퓨터구조','강주봉',2,'컴퓨터정보');

create or replace procedure test2
(v_stu_no in student.stu_no%type,
v_stu_grade in student.stu_grade%type)
is
begin
    update student
    set stu_grade = v_stu_grade
    where stu_no = v_stu_no;
end test2;
/

select * from student where stu_no = 20153075;

execute test2(20153075,2);

select * from student where stu_no = 20153075;

create or replace procedure test3
(v_stu_no in student.stu_no%type,
v_stu_name out student.stu_name%type)
is
begin
    select stu_name
        into v_stu_name
        from student
        where stu_no = v_stu_no;
    end test3;
/

select * from student;

variable d_stu_name varchar2(12);

execute test3(20153075,:d_stu_name);

print d_stu_name;

select * from enrol where stu_no = 20131001 and sub_no = 101;

variable d_enr_grade number
begin
    :d_enr_grade := 10;
end;
/

execute test4(101,20131001,;d_enr_grade);

print d_enr_grade;

create sequence seq2
increment by 1
start with 201
maxvalue 999;

select * from test5;

create procedure test5
(v_sub_name in subject.sub_name%type,
v_sub_prof in subject.sub_prof%type,
v_sub_year in subject.sub_grade%type,
v_sub_dept in subject.sub_dept%type)
is
begin
    insert
    into subject
    values(seq2.nextval, v_sub_name, v_sub_prof, v_sub_year, v_sub_dept);
commit;
end test5;
/

select * from subject;

execute test5('앱프로그래밍','홍길동',3,'컴퓨터정보');

select * from subject order by 1;


create or replace function test6
(v_enr_grade in number)
return char
is
    enr_score char;
begin
    if v_enr_grade >= 90 then enr_score := 'A';
    elsif v_enr_grade >=80 then enr_score := 'B';
    elsif v_enr_grade >=70 then enr_score := 'C';
    elsif v_enr_grade >=60 then enr_score := 'd';
    else enr_score := 'F';
    end if;
    return (enr_score);
end test6;
/

VARIABLE d_score char;

execute :d_score := test6(95);

print d_score;



create or replace procedure test7
(v_stu_no in student.stu_no%type)
is
v_stu_name student.stu_name%type;
begin
    select stu_name
    into v_stu_name
    from student
    where stu_no=v_stu_no;
    dbms_output.put_line(v_stu_name);
exception
    when no_data_found then
        dbms_output.put_line('해당 데이터가 없습니다.');
end test7;
/


execute test7(20153088);
execute test7(20153087);


create or replace procedure test8
    (v_sub_no in enrol.sub_no%type)
    is
    v_cnt number;
    cnt_error exception;
    begin
    select count(stu_no)
    into v_cnt
    from enrol
    where sub_no = v_sub_no;
    dbms_output.put_line(v_sub_no||'과목 수강자는 '||v_cnt||'명 입니다.');
    if v_cnt = 0 then
        raise cnt_error;
    end if;
    exception
        when cnt_error then
            dbms_output.put_line('수강자가 없습니다.');
     end test8;
/

execute test8(102);
execute test8(200);


create or replace procedure test9
(v_empno in emp.empno%type,
v_ename out emp.ename%type,
v_sal out emp.sal%type,
v_job out emp.job%type
)
is
begin
    select ename, sal, job
    into v_ename, v_sal, v_job
    from emp
    where empno=v_empno;
end test9;
/

variable var_ename varchar2(15);
variable var_sal number;
variable var_job varchar2(9);

execute test9(7369,:var_ename,:var_sal,:var_job);

print var_ename;
print var_sal;
print var_job;

create table pl_test3
as
select * from pl_test2;

select * from pl_test3;

create or replace procedure del_all
is
begin
    delete from pl_test3;
    commit;
end;
/

execute del_all;

create table pl_test4
as
select * from pl_test2;

select * from pl_test4;

create or replace procedure del_name(v_name pl_test4.name%type)
is
begin
    delete from pl_test4
    where name like v_name;
    commit;
end;
/

execute del_name('a%');

select * from pl_test4;


create or replace procedure p_insert_enrol
(v_sub_no in enrol.sub_no%type,
v_stu_no in enrol.stu_no%type,
v_enr_grade in enrol.enr_grade%type)
is
v_sub_no1 enrol.sub_no%type;
v_stu_no1 enrol.stu_no%type;
begin
    select sub_no
    into v_sub_no1
    from subject
    where sub_no=v_sub_no;
    
select stu_no
into v_stu_no1
from student
where stu_no=v_stu_no;

    insert into enrol(sub_no,stu_no,enr_grade)
    values(v_sub_no,v_stu_no,v_enr_grade);
    commit;

    dbms_output.put_line('학번 '||v_stu_no||'으로 '||v_sub_no||'번 과목이 '||v_enr_grade||'점으로 추가되었습니다.');

    exception
     when no_data_found then
        dbms_output.put_line('무결성에 위배됩니다.');
     when dup_val_on_index then
        dbms_output.put_line('데이터가 존재합니다');
     when others then
        dbms_output.put_line('에러입니다.');
        rollback;
end p_insert_enrol;
/
select * from enrol;
    
execute p_insert_enrol('111',20153088,70);


-- java DB ohohoh

CREATE TABLE event(
uname VARCHAR2(30),
email VARCHAR2(50)
);  


create table books(
book_id number not null primary key,
title varchar2(50),
publisher varchar2(30),
year varchar2(10),
price number
);


create sequence book_no_seq increment by 1 start with 1;

insert into books (book_id,title,publisher,year,price)
values(book_no_seq.nextval, 'Operating System Concepts', 'Wiley', '2003',30700);
insert into books(book_id,title,publisher,year,price)
values(book_no_seq.nextval, 'Head First PHP and MYSQL','Oreilly','2009',58000);
insert into books(book_id,title,publisher,year,price)
values(book_no_seq.nextval,'C Programming Language', 'Prentice-Hall','1989',35000);
insert into books(book_id,title,publisher,year,price)
values(book_no_seq.nextval, 'Head First SQL','Oreilly','2007',43000);

commit;

create table scores(
name varchar2(10),
score varchar2(10)
);


create table product (
prcode number(11,0) not null primary key,
prname varchar2(45) not null,
price number(11,0) not null,
manufacture varchar2(20) not null
);

create sequence procode_seq INCREMENT BY 1 START WITH 1;

commit;