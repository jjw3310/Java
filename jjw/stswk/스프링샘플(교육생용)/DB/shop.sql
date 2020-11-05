--------------------------------------------------------
--  파일이 생성됨 - 수요일-4월-08-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CART_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."CART_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 341 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PAYMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."PAYMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "SHOP"."BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" CLOB, 
	"WRITER" VARCHAR2(30 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"VIEWCNT" NUMBER DEFAULT 0, 
	"SHOW" CHAR(1 BYTE) DEFAULT 'Y'
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

   COMMENT ON COLUMN "SHOP"."BOARD"."BNO" IS '글번호';
   COMMENT ON COLUMN "SHOP"."BOARD"."TITLE" IS '글제목';
   COMMENT ON COLUMN "SHOP"."BOARD"."CONTENT" IS '글내용';
   COMMENT ON COLUMN "SHOP"."BOARD"."WRITER" IS '작성자ID';
   COMMENT ON COLUMN "SHOP"."BOARD"."REGDATE" IS '작성날짜';
   COMMENT ON COLUMN "SHOP"."BOARD"."VIEWCNT" IS '조회수';
   COMMENT ON COLUMN "SHOP"."BOARD"."SHOW" IS '노출여부';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SHOP"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"MEMBER_NAME" VARCHAR2(20 BYTE), 
	"MEMBER_PWD" VARCHAR2(512 BYTE), 
	"MEMBER_YEAR" DATE DEFAULT NULL, 
	"MEMBER_DATE" DATE DEFAULT sysdate, 
	"MEMBER_EMAIL" VARCHAR2(40 BYTE), 
	"MEMBER_PHONE" VARCHAR2(20 BYTE), 
	"MEMBER_SEQ" NUMBER, 
	"MEMBER_ZIPCODE" VARCHAR2(20 BYTE), 
	"MEMBER_FADDR" VARCHAR2(350 BYTE), 
	"MEMBER_LADDR" VARCHAR2(350 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_ID" IS '아이디';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_NAME" IS '이름';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_PWD" IS '비밀번호';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_YEAR" IS '생년월일';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_DATE" IS '회원가입일';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_EMAIL" IS '메일';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_PHONE" IS '연락처';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_SEQ" IS '회원고유코드';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_ZIPCODE" IS '우편번호';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_FADDR" IS '주소';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_LADDR" IS '상세주소';
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT" 
   (	"CATE_ID" VARCHAR2(20 BYTE), 
	"CATE_NAME" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT"."CATE_ID" IS '카테고리번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT"."CATE_NAME" IS '카테고리이름';
--------------------------------------------------------
--  DDL for Table PRODUCT_CART
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT_CART" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"PRD_ID" VARCHAR2(20 BYTE), 
	"BUY_QUANTITY" NUMBER DEFAULT 1, 
	"CART_ID" NUMBER, 
	"PRD_OPT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."MEMBER_ID" IS '회원아이디_FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."PRD_ID" IS '상품정보_FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."BUY_QUANTITY" IS '구매수량';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."CART_ID" IS '장바구니번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."PRD_OPT" IS '옵션';
--------------------------------------------------------
--  DDL for Table PRODUCT_INFO
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT_INFO" 
   (	"CATE_ID" VARCHAR2(20 BYTE), 
	"PRD_DATE" DATE DEFAULT sysdate, 
	"PRD_NAME" VARCHAR2(50 BYTE), 
	"PRD_ID" VARCHAR2(20 BYTE), 
	"PRD_PRICE" NUMBER DEFAULT 0, 
	"PRD_IMG" VARCHAR2(200 BYTE), 
	"PRD_DELIVERY" NUMBER DEFAULT 0, 
	"PRD_STOCK" NUMBER DEFAULT 0, 
	"PRD_OPTION" VARCHAR2(100 BYTE), 
	"PRD_DISCOUNT" NUMBER, 
	"PRD_EXPLAIN" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."CATE_ID" IS '카테고리번호_
FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_DATE" IS '등록일';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_NAME" IS '상품이름';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_ID" IS '상품번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_PRICE" IS '상품가격';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_IMG" IS '상품사진';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_DELIVERY" IS '배송비';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_STOCK" IS '재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_OPTION" IS '상품옵션';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_DISCOUNT" IS '할인금액';
--------------------------------------------------------
--  DDL for Table PRODUCT_PAYMENT
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT_PAYMENT" 
   (	"PAYMENT_ID" NUMBER, 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"PRD_ID" VARCHAR2(20 BYTE), 
	"BUY_QUANTITY" NUMBER, 
	"MEMBER_ZIPCODE" VARCHAR2(20 BYTE), 
	"MEMBER_FADDR" VARCHAR2(350 BYTE), 
	"MEMBER_LADDR" VARCHAR2(350 BYTE), 
	"MEMBER_PHONE" VARCHAR2(20 BYTE), 
	"CREDIT_NUMBER" VARCHAR2(20 BYTE), 
	"PAYMENT_DATE" DATE DEFAULT SYSDATE, 
	"PRD_OPT" VARCHAR2(20 BYTE), 
	"DELIVERY" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_ID" IS '결제번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_ID" IS '회원정보';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PRD_ID" IS '상품정보';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."BUY_QUANTITY" IS '상품갯수';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_ZIPCODE" IS '배송 우편번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_FADDR" IS '배송 우편주소
';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_LADDR" IS '배송 상세주소';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_PHONE" IS '회원연락처';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."CREDIT_NUMBER" IS '신용카드';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_DATE" IS '구매일';
REM INSERTING into SHOP.BOARD
SET DEFINE OFF;
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (21,'jsp에서 체크박스 질문입니다.123','Administrator',to_date('19/01/04','RR/MM/DD'),1,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (121,'20190116_1','Administrator',to_date('19/01/16','RR/MM/DD'),1,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (81,'20190111','Administrator',to_date('19/01/11','RR/MM/DD'),4,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (61,'132133213123','Administrator',to_date('19/01/10','RR/MM/DD'),1,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (101,'123123123123123','Administrator',to_date('19/01/14','RR/MM/DD'),1,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (141,'fdsa','Administrator',to_date('19/01/18','RR/MM/DD'),2,'Y');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (5,'asdasd','Administrator',to_date('18/12/31','RR/MM/DD'),2,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (4,'asdasd','Administrator',to_date('18/12/31','RR/MM/DD'),1,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (3,'asdf','Administrator',to_date('18/12/31','RR/MM/DD'),1,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (6,'야야야','Administrator',to_date('18/12/31','RR/MM/DD'),7,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (1,'★공지사항★','Administrator',to_date('18/12/28','RR/MM/DD'),64,'Y');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (2,'ㅋㅋㅋ','Administrator',to_date('18/12/28','RR/MM/DD'),4,'N');
Insert into SHOP.BOARD (BNO,TITLE,WRITER,REGDATE,VIEWCNT,SHOW) values (41,'20190111','Administrator',to_date('19/01/08','RR/MM/DD'),9,'N');
REM INSERTING into SHOP.MEMBER
SET DEFINE OFF;
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('a','ㅁ','697f2d856172cb8309d6b8b97dac4de344b549d4dee61edfb4962d8698b7fa803f4f93ff24393586e28b5b957ac3d1d369420ce53332712f997bd336d09ab02a',to_date('18/01/01','RR/MM/DD'),to_date('18/12/24','RR/MM/DD'),null,null,81,'123','123','123');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('test','test','9ece086e9bac491fac5c1d1046ca11d737b92a2b2ebd93f005d7b710110c0a678288166e7fbe796883a4f2e9b3ca9f484f521d0ce464345cc1aec96779149c14',to_date('18/11/11','RR/MM/DD'),to_date('18/12/25','RR/MM/DD'),null,null,1,'123','123','123');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('test1','test1','d2d8cc4f369b340130bd2b29b8b54e918b7c260c3279176da9ccaa37c96eb71735fc97568e892dc6220bf4ae0d748edb46bd75622751556393be3f482e6f794e',to_date('18/11/11','RR/MM/DD'),to_date('18/12/25','RR/MM/DD'),null,null,1,'123','123','123');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('test2','test2','e35970edaa1e0d8af7d948491b2da0450a49fd9cc1e83c5db4c6f175f9550cf341f642f6be8cfb0bfa476e4258e5088c5ad549087bf02811132ac2fa22b734c6',to_date('18/01/01','RR/MM/DD'),to_date('18/12/26','RR/MM/DD'),null,null,102,'123','123','123');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('Administrator','관리자','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('18/01/01','RR/MM/DD'),to_date('18/01/01','RR/MM/DD'),null,null,0,'123','123','123');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('11111','11111','7d6e49927bdd21d4bd76b0fa6d3afd1d5edc89d464e0e867e32b8948fc0a83a4dcef3936a325a227c77bcb5ab97e76f3f4006b97c0f8ccdeb89a24f05b505aa9',to_date('96/09/01','RR/MM/DD'),to_date('19/01/04','RR/MM/DD'),'@','--',122,'31104','충남 천안시 서북구 1공단1길 48(두정동)','11111');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('asdf','asdf','8d88cf5b20f53acd7ae1479b5b36dc2021753b049902c77247bb27b131b300bd3ca8beef28756dce27b8990867c4577a2535e7e3b75141399ca1a94cc84b0eb9',to_date('54/07/01','RR/MM/DD'),to_date('19/01/04','RR/MM/DD'),'asdf@hanmail.net','011-1234-1234',123,'48060','부산 해운대구 APEC로 30(우동, 벡스코제2전시장)','1234');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('22222','22222','cdef0c740bfc6224a650219c6266edcc491f6535c9444f21591423b95cc7d63344b2cf83e2c81f0143141f0659b3aa31996319b932fdcd6c4da531684bd58de9',to_date('52/07/02','RR/MM/DD'),to_date('19/01/07','RR/MM/DD'),'22222@gmail.com','010-2222-2222',141,'08812','서울 관악구 호암로22가길 2(신림동)','22222');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('33333','33333','ef47d0829b2d4cdab2378f2babbeaf66c50186484662a35171a9b80ab35e234cdff5c7c01f7cd6eed7ba05b37b72515e3d6fdee41e60f4f5e416bd51ff4ef2d2',to_date('00/01/03','RR/MM/DD'),to_date('19/01/07','RR/MM/DD'),'33333@33333','011-3333-3333',142,'24819','강원 속초시 미시령로3337번길 4(교동)','333');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('1q2w3e4r','해모수','bd1ffe17f90588e7b9318f4e097dad53b3f94aad0147745284b717a1c8fe95a1c9c5d4adbf5c75bfe1d2c4e513af98ba7c2a6e63750f44d1132a467124e775cc',to_date('99/12/03','RR/MM/DD'),to_date('19/01/08','RR/MM/DD'),'1q2w3e4r@gmail.com','010-1234-4311',161,'08322','서울 구로구 구로동로 3(가리봉동)','12344311');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('44444','44444','f9f29551484fd1d0fe07ebeea0ad2dbb12ceb34b326f5d4dc2f89a4c6337f2c2d91521f9b39721e3c4ac8d889f4351901169a29acfba64a2c91a2c149e0e71a9',to_date('00/01/01','RR/MM/DD'),to_date('19/01/11','RR/MM/DD'),'44444@naver.com','010-4444-4444',181,'14555','경기 부천시 길주로444번길 42(춘의동)','44444');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('arong7895','홍길동','de86ba3b57b7f4dc400cdf06d75075d7bbb48026314ef866e9e1bf520cfc41df640886ee07f59831b21f8f42228867e37cb7ead80fa28fe9c7212576d719bcef',to_date('93/04/02','RR/MM/DD'),to_date('19/01/16','RR/MM/DD'),'arong7895@gmail.com','010-1234-1234',203,'04709','서울 성동구 무학로2길 54(도선동, 신방)','신방빌딩 4층');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('123','123','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('80/12/25','RR/MM/DD'),to_date('19/01/04','RR/MM/DD'),'123','123',121,'123','456','789');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_YEAR,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR) values ('test0','test0','5df537b6bf7b448462a0b7106b2c6ce4899cac811fe6ce167a27fd2625266fa8d060b9bd566ae2b0c9f3b98fba434051717fbb17253137107151cde7d17c54f4',to_date('01/01/01','RR/MM/DD'),to_date('19/01/08','RR/MM/DD'),'@','--',162,'01027','서울 강북구 삼양로123가길 5(수유동)','123');
REM INSERTING into SHOP.PRODUCT
SET DEFINE OFF;
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('TAB20180010','TABLE_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('PLO20180020','FLOWERPOT_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('LIG20180030','LIGHTING_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('LED20180040','LED_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('CHE20180050','CHEVALGLASS_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('AWA20180060','AWALLMIRROR_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('ADF20180070','ADESKMIRROR_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('PLA20180080','PLATE_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('CUT20180090','CUTLEY_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('TEA20180100','TEA_ID');
Insert into SHOP.PRODUCT (CATE_ID,CATE_NAME) values ('FAB20180110','FABRIC_ID');
REM INSERTING into SHOP.PRODUCT_CART
SET DEFINE OFF;
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,BUY_QUANTITY,CART_ID,PRD_OPT) values ('a','FAB06',1,321,'-');
REM INSERTING into SHOP.PRODUCT_INFO
SET DEFINE OFF;
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TEA20180100',to_date('19/01/15','RR/MM/DD'),'프랑스 찻잔 세트','TEA03',57000,'resources/img/product/TEA20180100/TEA03.jpg',5000,10,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20160827_177/hahajapan_1472231177599ybOGt_JPEG/81101090397700.jpg" style="height:600px; width:600px" /><img alt="" src="https://shop-phinf.pstatic.net/20160827_33/hahajapan_1472231727357jHsAc_JPEG/21101090397908.jpg" style="height:600px; width:600px" /><strong>사이즈&nbsp;</strong><br />
<strong>W143&times;D143&times;H71mm</strong>');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TEA20180100',to_date('19/01/15','RR/MM/DD'),'홈파티 찻잔 세트','TEA05',120000,'resources/img/product/TEA20180100/TEA05.jpg',5000,10,'-',30000,',<br />
<br />
<br />
구성품<br />
<br />
찻잔세트 (15피스) + 3단 트레이<br />
<img alt="" src="http://howsoft.duckdns.org/img/china808/user/ahem04/img/201812/ahem04_20181217103718_0.jpg" style="height:650px; width:650px" /><br />
<br />
&nbsp;');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TEA20180100',to_date('19/01/15','RR/MM/DD'),'미녀와야수 찻잔 세트','TEA04',110000,'resources/img/product/TEA20180100/TEA04.jpg',5000,10,'-',20000,',<img alt="" src="https://shop-phinf.pstatic.net/20180824_34/101297592_1535117297971fMWOu_JPEG/5.jpg" style="height:800px; width:800px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20180824_1/101297592_1535117297953sbzRp_JPEG/8.jpg" style="height:500px; width:750px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLO20180020',to_date('19/01/15','RR/MM/DD'),'북유럽 시멘트화분','PLO01',89000,'resources/img/product/PLO20180020/PLO01.jpg',5000,10,'-',0,',<img alt="" src="http://lovepiary.godohosting.com/flowerpot/nordic_color/hm/003.jpg" style="height:533px; width:800px" /><br />
<br />
- 화분사이즈(cm) : 17(가로) x 22(높이) -<br />
배수구멍이 뚫려있는 화분입니다.&nbsp;');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLO20180020',to_date('19/01/15','RR/MM/DD'),'깡통 장식 화분','PLO02',22000,'resources/img/product/PLO20180020/PLO02.jpg',5000,10,'-',0,',<img alt="" src="http://image.ticketmonster.co.kr/deals/2018/07/08/1348966818/review_0849d_iatuy.jpg" style="height:8289px; width:650px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLO20180020',to_date('19/01/15','RR/MM/DD'),'LED 유리화분','PLO05',14000,'resources/img/product/PLO20180020/PLO05.jpg',5000,10,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20170803_167/500102220_1501738313459vdgtY_JPEG/12.JPG" style="height:573px; width:860px" /><img alt="" src="https://shop-phinf.pstatic.net/20170803_215/500102220_1501738343159HALSR_JPEG/21.JPG" style="height:573px; width:860px" /><img alt="" src="https://shop-phinf.pstatic.net/20170803_77/500102220_1501738082173Iv2CO_JPEG/111.jpg" style="height:860px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLO20180020',to_date('19/01/15','RR/MM/DD'),'인테리어 삼각 화분','PLO03',60000,'resources/img/product/PLO20180020/PLO03.jpg',5000,10,'-',10000,',<img alt="" src="https://shop-phinf.pstatic.net/20181204_262/100979738_1543916547979Bl6g8_JPEG/image_5407848251543916529215.jpg" style="height:965px; width:810px" /><br />
<br />
&lt; 삼각화분 사이즈 &gt;<br />
<br />
총길이 :&nbsp;<strong>14cm</strong><br />
화분둘레 사이즈 : 11cm<br />
화분길이 : 8.5cm');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLO20180020',to_date('19/01/15','RR/MM/DD'),'아이언 플라워 바스켓','PLO04',54000,'resources/img/product/PLO20180020/PLO04.jpg',5000,10,'-',8000,',<img alt="" src="http://www.likeme.co.kr/data/IMG/HM/HM171_05.jpg" style="height:800px; width:860px" /><br />
<br />
<img alt="" src="http://www.likeme.co.kr/data/IMG/HM/HM171_08.jpg" style="height:1004px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLO20180020',to_date('19/01/15','RR/MM/DD'),'인테리어 15단 화분대','PLO06',59000,'resources/img/product/PLO20180020/PLO06.jpg',5000,10,'-',12000,',<img alt="" src="http://gi.esmplus.com/domelink/hwabun/00_hwabun_00.jpg" style="height:874px; width:758px" /><br />
<img alt="" src="http://gi.esmplus.com/domelink/hwabun/00_hwabun_02.jpg" style="height:2309px; width:758px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('LIG20180030',to_date('19/01/15','RR/MM/DD'),'보름달 무드등','LIG01',37000,'resources/img/product/LIG20180030/TAB01.jpg',5000,10,'-',0,',<img alt="" src="http://ai.esmplus.com/gded/g/t/20181121/11/1542768183652c76151e.jpg" style="height:2361px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('LIG20180030',to_date('19/01/15','RR/MM/DD'),'LED 일체형 유리돔','LIG02',33000,'resources/img/product/LIG20180030/TAB02.jpg',5000,10,'-',10000,',<img alt="" src="https://shop-phinf.pstatic.net/20170823_261/500076856_1503456568965rVSNR_JPEG/%C8%C4%B1%E2%B8%F0%C0%BD.jpg" style="height:784px; width:782px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TAB20180010',to_date('19/01/15','RR/MM/DD'),'무소음 나무 LED 시계','TAB01',21000,'resources/img/product/TAB20180010/TAB03.jpg',5000,10,'-',0,',<img alt="" src="https://proxy.smartstore.naver.com/img/bW9vYXMwOS5nb2RvaG9zdGluZy5jb20vMTMwMzE1LzEzMDYyNC5qcGc=?token=5e68e4026086df484cf3b42120ede5bd" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('LIG20180030',to_date('19/01/15','RR/MM/DD'),'손가락하트 무드등','LIG06',17000,'resources/img/product/LIG20180030/TAB06.jpg',5000,10,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20181114_50/100854717_1542186143199YvDrB_JPEG/%BC%D5%B0%A1%B6%F4%C7%CF%C6%AE%B9%AB%B5%E5%B5%EE_%BB%F3%BC%BC%C6%E4%C0%CC%C1%F6%28%BA%CE%BA%D01%29.jpg" style="height:13000px; width:736px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TAB20180010',to_date('19/01/15','RR/MM/DD'),'나무 액자','TAB02',7900,'resources/img/product/TAB20180010/TAB08.jpg',5000,100,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20180720_82/500133778_1532070380879Rhp7f_PNG/01_mini_all_intro.png" style="height:1489px; width:860px" /><br />
<br />
우드 [블랙 / 화이트] 원목 슬림 액자<br />
탁상형 / 벽걸이 겸용<br />
5x7 6x8 8x10 inch');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TAB20180010',to_date('19/01/15','RR/MM/DD'),'벚꽃 나무 디퓨저','TAB03',14000,'resources/img/product/TAB20180010/TAB09.jpg',5000,100,'-',0,',<img alt="" src="http://img1.tmon.kr/deals/2017/03/02/515402462/515402462_intro_1a83731742_3dcad.jpg" style="height:800px; width:770px" /><br />
<br />
<img alt="" src="http://img1.tmon.kr/deals/2017/03/02/515402462/515402462_intro_9731d07a13_fc28f.jpg" style="height:800px; width:770px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('FAB20180110',to_date('19/01/15','RR/MM/DD'),'북유럽 식탁보','FAB01',60000,'resources/img/product/FAB20180110/FAB01.jpg',5000,10,'-',20000,',<img alt="" src="https://shop-phinf.pstatic.net/20181213_262/500271129_1544672781717l9det_JPEG/%BD%C4%C5%B9%BA%B8_01.jpg" style="height:876px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('FAB20180110',to_date('19/01/15','RR/MM/DD'),'방수 식탁보','FAB02',22000,'resources/img/product/FAB20180110/FAB02.jpg',5000,10,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20180802_186/500145042_1533184137386XBQHf_JPEG/bangsu-190.jpg" style="height:906px; width:600px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20180802_72/500145042_1533184137393kL3H1_JPEG/bangsu-191.jpg" style="height:906px; width:600px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('FAB20180110',to_date('19/01/15','RR/MM/DD'),'레이스 원형 식탁보','FAB03',37000,'resources/img/product/FAB20180110/FAB03.jpg',5000,100,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20180730_47/500039540_1532933190863U8qSW_JPEG/image_7526931251532932986986.jpg" style="height:583px; width:860px" /><br />
<br />
<strong>size</strong><br />
2인-&nbsp;지름&nbsp;110cm&nbsp;<br />
4인- 지름 140cm&nbsp;<br />
<br />
이외에 사이즈 맞춤이 가능합니다.<br />
<br />
<strong>color</strong><br />
아이보리<br />
<br />
<strong>fabric</strong><br />
폴리에스테르 100%');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('FAB20180110',to_date('19/01/15','RR/MM/DD'),'방수 테이블보','FAB04',22000,'resources/img/product/FAB20180110/FAB04.jpg',5000,100,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20180404_176/100918886_1522804694802g0osF_JPEG/1.jpg" style="height:571px; width:750px" /><br />
<img alt="" src="https://shop-phinf.pstatic.net/20180404_61/100918886_152280469482781zrt_JPEG/2.jpg" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('FAB20180110',to_date('19/01/15','RR/MM/DD'),'레트로 플라워 식탁보','FAB05',57000,'resources/img/product/FAB20180110/FAB05.jpg',5000,100,'-',7500,',<img alt="" src="https://shop-phinf.pstatic.net/20180918_251/500013870_1537246613620x4VIE_JPEG/DSC00290.JPG?type=w860" style="height:573px; width:860px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20180918_3/500013870_1537246745778rVxEH_JPEG/DSC00289.JPG?type=w860" style="height:1290px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('FAB20180110',to_date('19/01/15','RR/MM/DD'),'유럽풍 사각 식탁보','FAB06',42000,'resources/img/product/FAB20180110/FAB06.jpg',5000,100,'-',10000,',<img alt="" src="https://ae01.alicdn.com/kf/HTB1i.WcXODxK1Rjy1zcq6yGeXXan/Plaid-Decorative-Linen-Tablecloth-With-Tassel-Waterproof-Oilproof-Thick-Rectangular-Wedding-Dining-Table-Cover-Tea-Table.jpg" style="height:750px; width:750px" /><br />
<img alt="" src="https://ae01.alicdn.com/kf/HTB1DdGeXPzuK1Rjy0Fpq6yEpFXaB/Plaid-Decorative-Linen-Tablecloth-With-Tassel-Waterproof-Oilproof-Thick-Rectangular-Wedding-Dining-Table-Cover-Tea-Table.jpg" style="height:468px; width:750px" /><br />
<img alt="" src="https://ae01.alicdn.com/kf/HTB1dgrxngHqK1RjSZFEq6AGMXXab/Plaid-Decorative-Linen-Tablecloth-With-Tassel-Waterproof-Oilproof-Thick-Rectangular-Wedding-Dining-Table-Cover-Tea-Table.jpg" style="height:534px; width:750px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'스탠드형 전신 거울','CHE02',17000,'resources/img/product/CHE20180050/CHE02.jpg',5000,100,'-',2000,'<img alt="" src="https://shop-phinf.pstatic.net/20170718_38/500064335_1500351284527rohc3_JPEG/%BF%EC%B5%E5%C0%A3_%BD%BA%C5%C4%B5%E5%C7%FC_%C6%D0%BC%C7_%C0%FC%BD%C5%B0%C5%BF%EF_300_x_1560.jpg" style="height:4200px; width:780px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'데일리즈 골드 전신거울','CHE01',32000,'resources/img/product/CHE20180050/CHE01.jpg',5000,100,'-',3000,'<img alt="" src="https://shop-phinf.pstatic.net/20180921_223/101294156_1537499689024tJNyA_JPEG/%B5%A5%C0%CF%B8%AE%C1%EE-%B0%F1%B5%E5-%C0%FC%BD%C5%B0%C5%BF%EF_25.jpg" style="height:1411px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'인테리어 전신 거울','CHE03',42000,'resources/img/product/CHE20180050/CHE03.jpg',5000,100,'-',5000,'<img alt="" src="https://shop-phinf.pstatic.net/20181130_69/101342543_1543512609439ccmkV_JPEG/%C0%FC%BD%C5%B0%C5%BF%EF-%B8%AE%B4%BF%A4%A9-_07.jpg" style="height:1332px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'팔각 골드 전신거울','CHE04',85000,'resources/img/product/CHE20180050/CHE04.jpg',5000,100,'-',7500,',<img alt="" src="https://shop-phinf.pstatic.net/20181229_193/100859589_1546051332239MlKfa_JPEG/%B0%F1%B5%E5%C0%FC%BD%C5%B0%C5%BF%EF_%282%29.jpg" style="height:960px; width:720px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20181229_178/100859589_1546051416380xIYYM_JPEG/%B0%F1%B5%E5%C0%FC%BD%C5%B0%C5%BF%EF_%287%29.jpg" style="height:960px; width:720px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'앨리스 전신거울','CHE05',43000,'resources/img/product/CHE20180050/CHE05.jpg',5000,100,'-',7500,',<img alt="" src="http://link.webhard.co.kr/img/HDJ_IDBESTLIVING_FD2010091710104903286A950" style="height:7104px; width:750px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('ADF20180070',to_date('19/01/15','RR/MM/DD'),'우드 탁상거울','ADF01',12000,'resources/img/product/ADF20180070/ADF01.jpg',5000,100,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20171021_127/500018067_1508555888384HdbGb_GIF/463gif3.gif" style="height:860px; width:860px" /><br />
<br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20181012_133/500018067_1539343755903t8nKy_JPEG/463-02.jpg" style="height:2069px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'비잔틴 전신거울','CHE06',99000,'resources/img/product/CHE20180050/CHE06.jpg',5000,100,'-',15000,',<img alt="" src="http://fs.arumnet.com/image/N2460KOSNY/item/246000006762/contents/07451016200661.jpg" style="height:5651px; width:800px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CHE20180050',to_date('19/01/15','RR/MM/DD'),'아카시아 원목 전신거울','CHE07',54000,'resources/img/product/CHE20180050/CHE07.jpg',5000,100,'-',0,',<img alt="" src="http://i-castle.net/pu/nana/nasiph1_01.jpg" style="height:4476px; width:810px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('ADF20180070',to_date('19/01/15','RR/MM/DD'),'원형 화장대 스탠드 거울','ADF02',17000,'resources/img/product/ADF20180070/ADF02.jpg',5000,100,'-',0,',<img alt="" src="http://gi.esmplus.com/unicmandt/1119MIRROR.jpg" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('ADF20180070',to_date('19/01/15','RR/MM/DD'),'공주하트 탁상거울','ADF03',9900,'resources/img/product/ADF20180070/ADF03.jpg',5000,100,'-',0,'<img alt="" src="http://alllands.godohosting.com/dc/1472203541a.jpg" style="height:6718px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('ADF20180070',to_date('19/01/15','RR/MM/DD'),'트레이 탁상거울','ADF04',22000,'resources/img/product/ADF20180070/ADF04.jpg',5000,100,'-',0,',<img alt="" src="http://ochairsim.co.kr/goods/standmirrtrai/%EC%8A%A4%ED%83%A0%EB%93%9C%20%EB%AF%B8%EB%9F%AC%20%ED%8A%B8%EB%A0%88%EC%9D%B4%20-%20%ED%95%91%ED%81%AC/2.jpg" style="height:516px; width:599px" /><br />
<br />
<br />
<img alt="" src="http://ochairsim.co.kr/goods/standmirrtrai/%EC%8A%A4%ED%83%A0%EB%93%9C%20%EB%AF%B8%EB%9F%AC%20%ED%8A%B8%EB%A0%88%EC%9D%B4%20-%20%ED%95%91%ED%81%AC/1.jpg" style="height:748px; width:876px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('ADF20180070',to_date('19/01/15','RR/MM/DD'),'장미진주 탁상거울','ADF05',27000,'resources/img/product/ADF20180070/ADF05.jpg',5000,100,'-',5000,',<img alt="" src="http://shart10.speedgabia.com/%EA%B1%B0%EC%9A%B801/100208-jmg_01.jpg" style="height:3350px; width:800px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('AWA20180060',to_date('19/01/15','RR/MM/DD'),'장미장식 벽거울','AWA01',120000,'resources/img/product/AWA20180060/AWA01.jpg',5000,100,'-',30000,',<img alt="" src="https://shop-phinf.pstatic.net/20181115_273/500076096_1542265471351Ubvtr_JPEG/image_824658621542264510902.jpg?type=w860" style="height:881px; width:860px" /><br />
<br />
<br />
<strong>[ 구성 ]&nbsp;;<br />
벽거울 1p<br />
<br />
[ 전체 사이즈 ]&nbsp;;<br />
&nbsp;;세로 51.5 x 가로 65.5cm<br />
<br />
[ 색상 ]&nbsp;;<br />
엔틱 블루그레이 + 아이보리<br />
<br />
[ 소재 ]&nbsp;;<br />
우레탄, 거울<br />
<br />
[ 브랜드 / 원산지 ]&nbsp;;<br />
프랑스-꼬떼따블 / 중국</strong>');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('AWA20180060',to_date('19/01/15','RR/MM/DD'),'육각,원형 벽거울','AWA02',43000,'resources/img/product/AWA20180060/AWA02.jpg',5000,100,'-',10000,',<img alt="" src="https://shop-phinf.pstatic.net/20180525_242/500018067_1527240054603Ll0kT_JPEG/HZD-7140-50_spec.jpg" style="height:845px; width:860px" /><br />
<br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20180525_199/500018067_1527240064925Ynq0q_JPEG/HZD-7140-50_02.jpg" style="height:3031px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('AWA20180060',to_date('19/01/15','RR/MM/DD'),'프레임거울','AWA03',57000,'resources/img/product/AWA20180060/AWA03.jpg',5000,100,'-',12000,',<img alt="" src="http://openhost.chikuk1207.cafe24.com/web/upload/detail2/HJ8800_venetian_mirror.jpg" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('AWA20180060',to_date('19/01/15','RR/MM/DD'),'육각 벽거울','AWA04',17000,'resources/img/product/AWA20180060/AWA04.jpg',5000,100,'-',0,',<img alt="" src="http://www.casamiashop.com/INNODATA/2018-11/a319ed71-e229-4292-aa3e-cca4497313d6.jpg" style="height:740px; width:740px" /><br />
<br />
<img alt="" src="http://www.casamiashop.com/INNODATA/2018-11/c147ab39-4df4-4e8d-970a-5c5784f9ae65.jpg" style="height:798px; width:740px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CUT20180090',to_date('19/01/15','RR/MM/DD'),'이태리 커틀리 세트','CUT01',58000,'resources/img/product/CUT20180090/CUT01.jpg',5000,10,'-',7500,',<img alt="" src="https://shop-phinf.pstatic.net/20180804_40/101185030_1533373397541xBea8_JPEG/02.jpg" style="height:1696px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CUT20180090',to_date('19/01/15','RR/MM/DD'),'일제 커틀리 세트','CUT04',44000,'resources/img/product/CUT20180090/CUT04.jpg',5000,10,'-',14000,',<img alt="" src="http://img.yic.co.kr/goodsDesc/2017-11-22/426_20171122150907_5a151483c5a2d.jpg" style="height:602px; width:602px" /><br />
<br />
<br />
<img alt="" src="http://img.yic.co.kr/goodsDesc/2017-11-22/426_20171122150938_5a1514a2c279a.jpg" style="height:602px; width:602px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CUT20180090',to_date('19/01/15','RR/MM/DD'),'우드 커틀러리 세트','CUT02',38000,'resources/img/product/CUT20180090/CUT02.jpg',5000,10,'-',12000,',<img alt="" src="https://shop-phinf.pstatic.net/20190108_106/500287757_1546958864731yR9fg_JPEG/%BF%EC%B5%E5%C4%BF%C6%AE%B7%AF%B8%AE_%BF%CF.002.jpeg" style="height:2000px; width:1000px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('CUT20180090',to_date('19/01/15','RR/MM/DD'),'양식 커틀리 세트','CUT03',17000,'resources/img/product/CUT20180090/CUT03.jpg',5000,10,'-',0,',<img alt="" src="http://image.mhnco.co.kr/product/cba/TO066003_01.jpg" style="height:4632px; width:730px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLA20180080',to_date('19/01/15','RR/MM/DD'),'내추럴 우드 플레이트','PLA01',54000,'resources/img/product/PLA20180080/PLA01.jpg',5000,10,'-',5000,',<img alt="" src="https://shop-phinf.pstatic.net/20180630_162/500165801_15303191005087vHSx_JPEG/%B3%BB%C3%DF%B7%B2%BF%EC%B5%E5%B4%EB%C0%FC_%BB%F3%BC%BC_01.jpg" style="height:1323px; width:860px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20181010_4/500165801_1539157343083R61gU_JPEG/image_8000590451539157047549.jpg" style="height:1229px; width:851px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLA20180080',to_date('19/01/15','RR/MM/DD'),'원형 플레이트 세트','PLA02',44000,'resources/img/product/PLA20180080/PLA02.jpg',5000,10,'-',7500,',<img alt="" src="https://spoonsense.com/web/upload/dh_bistro_plt_001.jpg" style="height:750px; width:1000px" /><img alt="" src="https://spoonsense.com/web/upload/dh_bistro_plt_002.jpg" style="height:868px; width:1000px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLA20180080',to_date('19/01/15','RR/MM/DD'),'동물 플레이트','PLA03',37000,'resources/img/product/PLA20180080/PLA03.jpg',5000,10,'-',12000,',<img alt="" src="http://img.yic.co.kr/goodsDesc/2018-12-04/554_20181204175715_5c06416baf15e.jpg" style="height:860px; width:860px" /><br />
<img alt="" src="http://img.yic.co.kr/goodsDesc/2018-12-04/554_20181204175751_5c06418f998ce.jpg" style="height:860px; width:860px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLA20180080',to_date('19/01/15','RR/MM/DD'),'플라워 플레이트','PLA04',37000,'resources/img/product/PLA20180080/PLA04.jpg',500,10,'-',5000,',<br />
<img alt="" src="http://lecreuset.godohosting.com/online/new2017/201808_flowerplate(s)2P.jpg" /><br />
<img alt="" src="http://lecreuset.godohosting.com/online/new2017/detailbottomstone.jpg" style="height:2210px; width:850px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLA20180080',to_date('19/01/15','RR/MM/DD'),'원형 컬러 플레이트','PLA05',18000,'resources/img/product/PLA20180080/PLA05.jpg',5000,10,'-',0,',<img alt="" src="https://shop-phinf.pstatic.net/20180411_129/101146196_1523373867035nMJ0J_JPEG/KakaoTalk_20180410_213752234.jpg" style="height:720px; width:960px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20180411_28/101146196_1523373867027jAY1n_JPEG/KakaoTalk_20180410_214939107.jpg" style="height:720px; width:960px" /><br />
<br />
&nbsp;');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('PLA20180080',to_date('19/01/15','RR/MM/DD'),'브런치 플레이트','PLA06',27000,'resources/img/product/PLA20180080/PLA06.jpg',5000,10,'-',0,',<img alt="" src="https://blogfiles.pstatic.net/MjAxODExMTRfMTk4/MDAxNTQyMTc1NDc1MTQy.6A0qYBjlGayFKyi41vxw6Ao-995xB81WKVjACW3y9gUg.s1YLzZasYa4-sON86011hOb2lA95KDxdNTzeWGhplR8g.PNG.abodekorea/image.png?type=w1" style="height:727px; width:716px" /><br />
&nbsp;');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TEA20180100',to_date('19/01/15','RR/MM/DD'),'인디고 커피잔 받침 세트','TEA01',9900,'resources/img/product/TEA20180100/TEA01.jpg',5000,10,'-',0,',<img alt="" src="https://proxy.smartstore.naver.com/img/anVqb21pbmcwMzEwLmNhZmUyNC5jb20vbGl2aW5nJTIwemFra2Eva2FuZXN1emUvaW5kaWdvX2NvZmZlZTI2NS9pbmRpZ29fY29mZmVlMjY1X3QuanBn?token=76df53578bf90ea7f2c9f9033beb7f88" style="height:2152px; width:900px" />');
Insert into SHOP.PRODUCT_INFO (CATE_ID,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_DELIVERY,PRD_STOCK,PRD_OPTION,PRD_DISCOUNT,PRD_EXPLAIN) values ('TEA20180100',to_date('19/01/15','RR/MM/DD'),'유럽스타일 찻잔 세트','TEA02',37000,'resources/img/product/TEA20180100/TEA02.jpg',5000,10,'-',5000,',<img alt="" src="https://shop-phinf.pstatic.net/20181205_175/101078450_1543968116124pgdVa_JPEG/O1CN011S1gff4j4e9F0Jp_3011262187.jpg" style="height:750px; width:750px" /><br />
<br />
<img alt="" src="https://shop-phinf.pstatic.net/20181205_268/101078450_1543968116123ELNOf_JPEG/O1CN011S1gff4rGRmBK12_3011262187_%281%29.jpg" style="height:750px; width:750px" />');
REM INSERTING into SHOP.PRODUCT_PAYMENT
SET DEFINE OFF;
Insert into SHOP.PRODUCT_PAYMENT (PAYMENT_ID,MEMBER_ID,PRD_ID,BUY_QUANTITY,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,MEMBER_PHONE,CREDIT_NUMBER,PAYMENT_DATE,PRD_OPT,DELIVERY) values (83,'arong7895','TAB01',1,'04709','서울 성동구 무학로2길 54(도선동, 신방)','신방빌딩 4층','010-1234-1234','4321-3214-2143-1432',to_date('19/01/16','RR/MM/DD'),'-','배송중');
Insert into SHOP.PRODUCT_PAYMENT (PAYMENT_ID,MEMBER_ID,PRD_ID,BUY_QUANTITY,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,MEMBER_PHONE,CREDIT_NUMBER,PAYMENT_DATE,PRD_OPT,DELIVERY) values (81,'arong7895','TEA04',1,'04709','서울 성동구 무학로2길 54(도선동, 신방)','신방빌딩 4층','010-1234-1234','1234-2345-3456-4567',to_date('19/01/16','RR/MM/DD'),'-','배송중');
Insert into SHOP.PRODUCT_PAYMENT (PAYMENT_ID,MEMBER_ID,PRD_ID,BUY_QUANTITY,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,MEMBER_PHONE,CREDIT_NUMBER,PAYMENT_DATE,PRD_OPT,DELIVERY) values (82,'arong7895','PLO05',1,'04709','서울 성동구 무학로2길 54(도선동, 신방)','신방빌딩 4층','010-1234-1234','4321-3214-2143-1432',to_date('19/01/16','RR/MM/DD'),'-','배송중');
Insert into SHOP.PRODUCT_PAYMENT (PAYMENT_ID,MEMBER_ID,PRD_ID,BUY_QUANTITY,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,MEMBER_PHONE,CREDIT_NUMBER,PAYMENT_DATE,PRD_OPT,DELIVERY) values (101,'a','FAB04',1,'123','123','123',null,'1111-111-1111-111',to_date('19/09/26','RR/MM/DD'),'-','배송중');
--------------------------------------------------------
--  DDL for Index PRODUCT_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_INFO_PK" ON "SHOP"."PRODUCT_INFO" ("PRD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_PK" ON "SHOP"."PRODUCT" ("CATE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."MEMBER_PK" ON "SHOP"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_PAYMENT_PK" ON "SHOP"."PRODUCT_PAYMENT" ("PAYMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."BOARD_PK" ON "SHOP"."BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_CART_PK" ON "SHOP"."PRODUCT_CART" ("CART_ID", "PRD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_CART_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_CART_PK1" ON "SHOP"."PRODUCT_CART" ("CART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure MYPROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOP"."MYPROC" ()
BEGIN
SELECT * FROM memberTBL where memberName="탕탕이";
SELECT * FROM productTBL where productName="냉장고";
END//
DELIMITER;

CALL myProc()


/
--------------------------------------------------------
--  Constraints for Table PRODUCT_INFO
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_INFO" ADD CONSTRAINT "PRODUCT_INFO_PK" PRIMARY KEY ("PRD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("CATE_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("PRD_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_PAYMENT
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PRD_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("BUY_QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_FADDR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_LADDR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" ADD CONSTRAINT "PRODUCT_PAYMENT_PK" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("CREDIT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT" ADD CONSTRAINT "PRODUCT_PK" PRIMARY KEY ("CATE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("CATE_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT" MODIFY ("CATE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SHOP"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_YEAR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_PWD" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_SEQ" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_FADDR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_LADDR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_CART
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("BUY_QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("PRD_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("CART_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" ADD CONSTRAINT "PRODUCT_CART_PK" PRIMARY KEY ("CART_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "SHOP"."BOARD" MODIFY ("BNO" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."BOARD" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_CART
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_CART" ADD CONSTRAINT "FK_MEMBER_ID" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SHOP"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "SHOP"."PRODUCT_CART" ADD CONSTRAINT "FK_PRD_ID" FOREIGN KEY ("PRD_ID")
	  REFERENCES "SHOP"."PRODUCT_INFO" ("PRD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_INFO
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_INFO" ADD CONSTRAINT "FK_CATE_ID" FOREIGN KEY ("CATE_ID")
	  REFERENCES "SHOP"."PRODUCT" ("CATE_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCT_PAYMENT
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" ADD CONSTRAINT "PAY_MEMBERID_FK" FOREIGN KEY ("MEMBER_ID")
	  REFERENCES "SHOP"."MEMBER" ("MEMBER_ID") ENABLE;
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" ADD CONSTRAINT "PAY_PRDID_FK" FOREIGN KEY ("PRD_ID")
	  REFERENCES "SHOP"."PRODUCT_INFO" ("PRD_ID") ENABLE;
