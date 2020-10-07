-- 7�� PL/SQL

set serveroutput on;

begin
    dbms_output.put_line('Hello World');
    dbms_output.put_line('����Ŭ�Դϴ�.');
end;
/

declare
    vempno number(4);
    vename varchar2(10);
begin
    vempno := 1001;
    vename := '����';
    dbms_output.put_line('��� �̸�');
    dbms_output.put_line('---------------');
    dbms_output.put_line(' '||vempno||' '||vename);
end;
/
-- ����

set serveroutput on

declare
v_condition number := 1;
begin
if v_condition = 1 then
    dbms_output.put_line('����');
   end if;
end;
/

declare
    v_condition number := 1;
    begin
        if v_condition > 1 then
            dbms_output.put_line('����');
        else
            dbms_output.put_line('�츮');
        end if;
    end; 
/

declare
v_condition number := 2;
begin
if v_condition < 1 then
    dbms_output.put_line('����');
elsif v_condition = 1 then
    dbms_output.put_line('�α�');
else
    dbms_output.put_line('����');
end if;
end;
/


declare
v_cnt number := 0;
v_sum number := 0;
begin
    loop
        v_cnt := v_cnt + 1;
        v_sum := v_sum + v_cnt;
        dbms_output.put_line(v_cnt||'-'||v_sum);
        exit when v_cnt = 10;
        end loop;
    end;
/

declare
    v_cnt number;
    v_sum number := 0;
    begin
        for v_cnt in 1..10 loop
            v_sum := v_sum + v_cnt;
            dbms_output.put_line(v_cnt||'->'||v_sum);
        end loop;
    end;
/ 

declare
    n number := 1;
    begin
        loop
            dbms_output.put_line(n);
            n := n+1;
            if n > 5 then
                exit;
            end if;
            end loop;
    end;
/
        
        
declare
    n number := 1;
    begin
        for n in 1..5 loop
            dbms_output.put_line(n);
        end loop;
    end;
/

declare
    n number := 1;
    begin
        while n > 5 loop
        dbms_output.put_line(n);
        n := n + 1;
        end loop;
    end;
/


declare
    dan number := 5;
    i number := 1;
begin
loop
    dbms_output.put_line(dan||'*'||i||'='||(dan*i));
    i := i + 1;
    if i > 9 then
        exit;
    end if;
end loop;
end;
/

declare
    v_cnt number := 1;
    v_str varchar2(10) := null;
begin
    while v_cnt <= 5 loop
        v_str := v_str ||'*';
        dbms_output.put_line(v_str);
        v_cnt := v_cnt + 1;
    end loop;
end;
/


/* SET VERIFY ON/OFF : SQL ��ɾ PL/SQL���� &�� �̿��� ġȯ �������� ����� �� ġȯ�Ǳ� �� ���� �ڼ��� ���� ���� ������ ���θ� �����Ѵ�. �⺻���� ON�̴�. */

set verify off,

--���� 3
select &list
from &tab
where rownum<10;

--���� 4

drop table pl_test2;

create table pl_test2
(no number,
name varchar2(10),
addr varchar2(10)
);

-- ������ 3�� ����


declare
    v_no number := '&no';
    v_name varchar(10) := '&name';
    v_addr varchar(10) := '&addr';
begin
    insert into pl_test2
    values(v_no,v_name,v_addr);
end;
/

select * from pl_test2;

begin
    update pl_test2
    set name = 'KKK'
    where no = 1;
end;
/

begin
    delete from pl_test2
    where no = 3;
end;
/

select * from pl_test2;

begin
    update pl_test2
    set name = 'ȫ�浿', addr = '�սʸ�'
    where no=2;
end;
/

