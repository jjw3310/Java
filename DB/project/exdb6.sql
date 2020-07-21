select a.stu_no, stu_name
from student a, subject b, enrol c
where a.stu_no = c.stu_no and c.sub_no=b.sub_no and sub_name = '��ǻ�Ͱ���';

select * from subject;
select * from student;
select * from enrol;

select stu_no, stu_name
from student join enrol using(stu_no) join subject using(sub_no)
where sub_name = '��ǻ�Ͱ���';

select stu_no, stu_name
from student natural join enrol natural join subject
where sub_name = '��ǻ�Ͱ���';


select a.stu_no, a.stu_name, b.enr_grade, c.sub_name
from student a, enrol b, subject c
where a.stu_no = b.stu_no and b.sub_no = c.sub_no and (sub_name='�ý��ۺм�����' or sub_name='����Ʈ�������')
order by enr_grade desc;

select stu_no, stu_name, enr_grade, sub_name
from student join enrol using(stu_no) join subject using(sub_no)
where sub_name = '�ý��ۺм�����' or sub_name='����Ʈ�������'
order by enr_grade desc;

select stu_no, stu_name, enr_grade
from student natural join enrol natural join subject
where sub_name = '�ý��ۺм�����' or sub_name = '����Ʈ�������'
order by 3 desc;


select distinct a.stu_no, stu_name
from student a, enrol b, subject c
where a.stu_no = b.stu_no and b.sub_no = c.sub_no and (sub_grade = 1 or sub_dept = '��ǻ������');


select distinct stu_no, stu_name, enr_grade
from student natural join enrol natural join subject
where sub_name = '�����۹�' or sub_name = '�������ڽ���'
order by enr_grade desc;

select stu_no
from student join enrol using(stu_no) join subject using(sub_no)
where sub_prof = '���¿�' or sub_prof = '������';


select distinct stu_name, enr_grade
from student a, enrol b
where a.stu_no = b.stu_no
order by 2 desc;

select distinct stu_name, enr_grade
from student join enrol using(stu_no)
order by 2 desc;

select distinct stu_name, enr_grade
from student natural join enrol
order by 2 desc;

select c.sub_name
from student a, enrol b, subject c
where a.stu_no = b.stu_no and b.sub_no = c.sub_no and a.stu_name = '���Ѻ�';

select sub_name
from student natural join enrol natural join subject
where stu_gender = 'F';

select distinct sub_name
from student join enrol using(stu_no) join subject using(sub_no)
where stu_weight >= 60;

select stu_no, stu_name
from student natural join enrol natural join subject
where sub_dept = '��ǻ������';

select stu_name
from student a, enrol b, subject c
where a.stu_no = b.stu_no and b.sub_no = c.sub_no and a.stu_gender = 'F' and c.sub_prof = '������';

select a.stu_no, stu_name
from student a, enrol b
where a.stu_no=b.stu_no and enr_grade >= (select avg(enr_grade) from student a, enrol b where a.stu_no=b.stu_no and stu_name = '������')
and stu_name <> '������';


select stu_no, stu_name
from student join enrol using(stu_no)
where enr_grade >=
    (select avg(enr_grade)
    from student join enrol using(stu_no)
    where stu_name='������')
and stu_name <> '������';

select distinct stu_no, stu_name, sub_name
from student natural join enrol natural join subject
where enr_grade <=
    (select avg(enr_grade) from student natural join enrol where stu_name = '������')
    and stu_name <> '������';


select distinct stu_no, stu_name, sub_name, enr_grade
from student join enrol using(stu_no) join subject using(sub_no)
where enr_grade >= (select avg(enr_grade) from enrol)
order by 4 desc;

select stu_dept, max(enr_grade)
from student join enrol using(stu_no)
group by stu_dept having max(enr_grade) > (select max(enr_grade) from student join enrol using(stu_no) 
where stu_dept='���');

select stu_dept, min(enr_grade)
from student join enrol using(stu_no)
group by stu_dept having min(enr_group) > (select min(enr_grade) from student join enrol using(stu_no)
where stu_dept='��������');

select sub_no, sub_name, count(*)
from student natural join enrol natural join subject
group by sub_no, sub_name
order by sub_no;