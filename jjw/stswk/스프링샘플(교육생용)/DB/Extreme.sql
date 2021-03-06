--------------------------------------------------------
--  파일이 생성됨 - 화요일-4월-07-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EXTREMEDB"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 1000 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence RESERVATION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EXTREMEDB"."RESERVATION_SEQ"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence USER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EXTREMEDB"."USER_SEQ"  MINVALUE 1 MAXVALUE 10000 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "EXTREMEDB"."NOTICE" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" CLOB, 
	"WRITER" VARCHAR2(30 BYTE), 
	"VIEWCNT" NUMBER DEFAULT 0, 
	"REGDATE" DATE DEFAULT sysdate, 
	"SHOW" VARCHAR2(20 BYTE) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS BASICFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."BNO" IS '번호';
   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."TITLE" IS '제목';
   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."CONTENT" IS '내용';
   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."WRITER" IS '작성자';
   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."VIEWCNT" IS '조회수';
   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."REGDATE" IS '등록일';
   COMMENT ON COLUMN "EXTREMEDB"."NOTICE"."SHOW" IS '화면표시여부';
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "EXTREMEDB"."RESERVATION" 
   (	"RNO" NUMBER, 
	"USER_ID" VARCHAR2(100 BYTE), 
	"COURSE" VARCHAR2(100 BYTE), 
	"RENTAL" VARCHAR2(100 BYTE) DEFAULT '없음', 
	"OTHER" VARCHAR2(100 BYTE) DEFAULT '없음', 
	"PERSON" NUMBER, 
	"TOTALPAY" VARCHAR2(100 BYTE), 
	"PAYMENT" CHAR(10 BYTE) DEFAULT '입금 전', 
	"RESDAY" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."RNO" IS '예약번호';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."USER_ID" IS '유저아이디';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."COURSE" IS '강습종류';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."RENTAL" IS '렌탈';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."OTHER" IS '기타';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."PERSON" IS '인원 수';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."TOTALPAY" IS '총 금액';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."PAYMENT" IS '결제여부';
   COMMENT ON COLUMN "EXTREMEDB"."RESERVATION"."RESDAY" IS '예약일';
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "EXTREMEDB"."USERS" 
   (	"USER_NUM" NUMBER DEFAULT 0, 
	"USER_ID" VARCHAR2(20 BYTE), 
	"USER_PW" VARCHAR2(20 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"USER_BIRTH" VARCHAR2(50 BYTE), 
	"USER_TEL" VARCHAR2(20 BYTE), 
	"USER_EMAIL" VARCHAR2(50 BYTE), 
	"USER_ADDR" VARCHAR2(100 BYTE), 
	"USER_JOIN" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_NUM" IS '번호';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_ID" IS '아이디';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_PW" IS '비밀번호';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_NAME" IS '이름';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_BIRTH" IS '생년월일';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_TEL" IS '전화번호';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_EMAIL" IS '이메일';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_ADDR" IS '주소';
   COMMENT ON COLUMN "EXTREMEDB"."USERS"."USER_JOIN" IS '가입일';
REM INSERTING into EXTREMEDB.NOTICE
SET DEFINE OFF;
Insert into EXTREMEDB.NOTICE (BNO,TITLE,WRITER,VIEWCNT,REGDATE,SHOW) values (21,'?안녕하세요 MIRAE SURF입니다.','admin',1,to_date('19/10/23','RR/MM/DD'),'N');
Insert into EXTREMEDB.NOTICE (BNO,TITLE,WRITER,VIEWCNT,REGDATE,SHOW) values (62,'MIRAE SURF 물가 상승에 인한 렌탈/기타 비용 인상안내','admin',2,to_date('19/10/15','RR/MM/DD'),'Y');
Insert into EXTREMEDB.NOTICE (BNO,TITLE,WRITER,VIEWCNT,REGDATE,SHOW) values (42,'??MIRAE SURF 공지사항','admin',8,to_date('19/10/14','RR/MM/DD'),'Y');
Insert into EXTREMEDB.NOTICE (BNO,TITLE,WRITER,VIEWCNT,REGDATE,SHOW) values (61,'MIRAE SURF 10월 일정','admin',5,to_date('19/10/15','RR/MM/DD'),'Y');
Insert into EXTREMEDB.NOTICE (BNO,TITLE,WRITER,VIEWCNT,REGDATE,SHOW) values (63,'?MIRAE SURF 10월 애프터 파티 일정','admin',7,to_date('19/10/15','RR/MM/DD'),'Y');
REM INSERTING into EXTREMEDB.RESERVATION
SET DEFINE OFF;
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (103,'test2','초급강습','렌탈선택','기타선택',1,'50000','입금 전','2019-10-21');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (83,'test3','중급강습','보드+슈트대여','샤워',5,'615000','입금 전','2019-10-23');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (84,'test4','초급강습','슈트대여','샤워',7,'546000','입금 전','2019-10-23');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (85,'test5','초급강습','보드대여','숙박',5,'425000','입금 전','2019-10-19');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (86,'test6','포인트강습','렌탈선택','기타선택',3,'300000','입금 전','2019-11-22');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (87,'test7','중급강습','보드대여','샤워',1,'98000','입금 전','2019-11-07');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (88,'test8','초급강습','보드+슈트대여','숙박',9,'990000','입금 전','2019-11-16');
Insert into EXTREMEDB.RESERVATION (RNO,USER_ID,COURSE,RENTAL,OTHER,PERSON,TOTALPAY,PAYMENT,RESDAY) values (89,'test9','중급강습','보드대여','숙박',2,'230000','입금 전','2019-11-12');
REM INSERTING into EXTREMEDB.USERS
SET DEFINE OFF;
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (101,'test10','test1234','김호띠','920429','010412342112','gimoddi@gmail.com','경북 안동시 송현동 357-9 1층 103호',to_date('19/10/23','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (102,'test11','test1234','뇌섹남','820112','01098235532','brainsexy9213@daum.net','경북 안동시 감나무길 5(태화동) 1302호',to_date('19/10/23','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (103,'test12','test1234','양그림','960512','01032415526','picture_412@naver.com','경북 울릉군 울릉읍 독도리 20-2 1층',to_date('19/10/23','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (104,'admin13','test1234','김세모','850311','01024121114','semo22_22@daum.net','서울 송파구 석촌동 221-1 803호',to_date('19/10/23','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (63,'test5','test1234','문제아','990123','01069851548','tomato234@gamil.com','서울 강남구 봉은사로 403(삼성동, 하모니 빌딩) 501호',to_date('19/10/21','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (3,'admin','admin1234','관리자','960410','01079143374','sobleach60@gmail.com','서울 중랑구 면목로78길 64(면목동, 미소빌리지) 401호',to_date('19/10/07','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (61,'test3','test1234','김철수','960507','01053442231','chulsoo76@daum.net','부산 강서구 가덕해안로 7(성북동) 303호',to_date('19/10/21','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (41,'test2','test1234','홍길동','960410','01057603374','so_bleach@naver.com','서울 중랑구 면목로78길 64(면목동, 미소빌리지) 401호',to_date('19/10/20','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (62,'test4','test1234','이네모','000502','01032352227','nemo222@naver.com','강원 춘천시 가연길 3(소양로4가) 1층',to_date('19/10/21','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (64,'test6','test1234','강해효','850213','01065572348','haehyo_g@naver.com','울산 남구 갈밭로 38(삼산동) 1층',to_date('19/10/21','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (65,'test7','test1234','진모리','770504','01069872456','morimori@naver.com','서울 성동구 고산자로 261-5(도선동) 303호',to_date('19/10/21','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (66,'test8','test1234','한대위','970521','01098542136','captain007@naver.com','경기 성남시 중원구 성남동 3213 1502호',to_date('19/10/21','RR/MM/DD'));
Insert into EXTREMEDB.USERS (USER_NUM,USER_ID,USER_PW,USER_NAME,USER_BIRTH,USER_TEL,USER_EMAIL,USER_ADDR,USER_JOIN) values (67,'test9','test1234','유미라','980621','01054623666','mira_princess@gmail.com','서울 중랑구 겸재로 73-11(면목동) 1201호',to_date('19/10/21','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index BOARD_NOTICE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXTREMEDB"."BOARD_NOTICE_PK" ON "EXTREMEDB"."NOTICE" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXTREMEDB"."USERS_PK" ON "EXTREMEDB"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index RESERVATION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXTREMEDB"."RESERVATION_PK" ON "EXTREMEDB"."RESERVATION" ("RNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USERS_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "EXTREMEDB"."USERS_PK1" ON "EXTREMEDB"."USERS" ("USER_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "EXTREMEDB"."RESERVATION" MODIFY ("RNO" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."RESERVATION" ADD CONSTRAINT "RESERVATION_PK" PRIMARY KEY ("RNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_PW" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_NAME" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_ADDR" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_NUM" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_TEL" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_EMAIL" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."USERS" MODIFY ("USER_JOIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "EXTREMEDB"."NOTICE" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "EXTREMEDB"."NOTICE" ADD CONSTRAINT "BOARD_NOTICE_PK" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "EXTREMEDB"."RESERVATION" ADD FOREIGN KEY ("USER_ID")
	  REFERENCES "EXTREMEDB"."USERS" ("USER_ID") ON DELETE CASCADE ENABLE;
