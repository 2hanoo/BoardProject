--------------------------------------------------------
--  파일이 생성됨 - 화요일-3월-18-2014   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

CREATE TABLE BOARD
(
  SEQ      NUMBER,
  WRITER   VARCHAR2(20 BYTE)                    NOT NULL,
  TITLE    VARCHAR2(100 BYTE)                   NOT NULL,
  CONTENT  VARCHAR2(500 BYTE)                   NOT NULL,
  PWD      VARCHAR2(20 BYTE)                    NOT NULL,
  HIT      NUMBER                               NOT NULL,
  GROUPS   NUMBER                               NOT NULL,
  STEP     NUMBER                               NOT NULL,
  LEVELS   NUMBER                               NOT NULL,
  REGDATE  DATE                                 NOT NULL
);
 
CREATE SEQUENCE BOARDSEQ
  START WITH 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1
  NOCYCLE
  NOCACHE
  NOORDER;
  

