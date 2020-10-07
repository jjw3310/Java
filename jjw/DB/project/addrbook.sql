--오라클(주소록DB)

CREATE TABLE addrbook (
  ab_id number NOT NULL PRIMARY KEY,
  ab_name varchar2(15) NOT NULL,
  ab_email varchar2(50),
  ab_comdept varchar2(20) NOT NULL,
  ab_birth varchar2(10) NOT NULL,
  ab_tel varchar2(20),
  ab_memo varchar2(100)  
);

create sequence ab_seq
increment by 1
start with 1;

commit;

