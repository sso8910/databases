
CREATE TABLE COMPANY
(
  ID      VARCHAR(200) NOT NULL COMMENT 'uniqu id',
  NAME    VARCHAR(200) NOT NULL COMMENT '이름',
  AGE     INT          NULL     COMMENT '나이',
  ADDRESS VARCHAR(200) NULL     COMMENT '주소',
  SALARY  INT          NOT NULL COMMENT '월급',
  PRIMARY KEY (ID)
) COMMENT '회사 구성원';

CREATE TABLE COMPANY_DEPT
(
  COMPANY_ID VARCHAR(200) NOT NULL COMMENT 'uniqu id',
  DEPT_ID    VARCHAR(200) NOT NULL COMMENT 'uniqu id'
) COMMENT '관계테이블';

CREATE TABLE DEPARTMENT
(
  ID   VARCHAR(200) NOT NULL COMMENT 'uniqu id',
  DEPT VARCHAR(200) NOT NULL COMMENT '부서',
  PRIMARY KEY (ID)
) COMMENT '부서명들';

ALTER TABLE COMPANY_DEPT
  ADD CONSTRAINT FK_COMPANY_TO_COMPANY_DEPT
    FOREIGN KEY (COMPANY_ID)
    REFERENCES COMPANY (ID);

ALTER TABLE COMPANY_DEPT
  ADD CONSTRAINT FK_DEPARTMENT_TO_COMPANY_DEPT
    FOREIGN KEY (DEPT_ID)
    REFERENCES DEPARTMENT (ID);
