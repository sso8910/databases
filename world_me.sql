
CREATE TABLE city_me
(
  ID          INT          NOT NULL COMMENT '아이디',
  Name        VARCHAR(200) NULL     COMMENT '도시명',
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가코드',
  District    VARCHAR(200) NULL     COMMENT '구',
  Population  INT          NULL     COMMENT '인구',
  PRIMARY KEY (ID)
) COMMENT '도시';

CREATE TABLE country_me
(
  Code           VARCHAR(200) NOT NULL COMMENT '코드',
  Name           VARCHAR(200) NULL     COMMENT '나라이름',
  Continent      ENUM         NULL     COMMENT '대륙',
  Region         VARCHAR(200) NULL     COMMENT '지역',
  SurfaceArea    DECIMAL      NULL     COMMENT '면적',
  IndepYear      SMALLINT     NULL     COMMENT '독립년도',
  Population     INT          NULL     COMMENT '인구',
  LifeExpectancy DECIMAL      NULL     COMMENT '기대수명',
  GNP            DECIMAL      NULL     COMMENT 'GNP',
  GNPOld         DECIMAL      NULL     COMMENT '과거GNP',
  LocalName      VARCHAR(200) NULL     COMMENT '주이름',
  GovernmentForm VARCHAR(200) NULL     COMMENT '합의기관',
  HeadOfState    VARCHAR(200) NULL     COMMENT '주수도',
  Capital        INT          NULL     COMMENT '수도',
  Code2          VARCHAR(200) NULL     COMMENT '코드2',
  PRIMARY KEY (Code)
) COMMENT '국가';

CREATE TABLE countrylanguage_me
(
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가코드',
  Language    VARCHAR(200) NULL     COMMENT '언어',
  IsOfficial  ENUM         NULL     COMMENT '이즈오피셜',
  Percentage  DECIMAL      NULL     COMMENT '비율',
  PRIMARY KEY (CountryCode)
) COMMENT '국가별언어';

ALTER TABLE city_me
  ADD CONSTRAINT FK_countrylanguage_me_TO_city_me
    FOREIGN KEY (CountryCode)
    REFERENCES countrylanguage_me (CountryCode);
