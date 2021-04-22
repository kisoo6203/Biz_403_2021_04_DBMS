-- 관리자권한접속

CREATE TABLESPACE schoolDB
DATAFILE 'C:/oraclexe/data/school.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K; -- 테이블스페이스 생성

DROP TABLESPACE schoolDB
INCLUDING CONTENTS AND DATAFILES
CASCADE CONSTRAINTS; -- 테이블스페이스 삭제

-- schema : table, index, view 등등 데이터의 전체적인 모음집
-- 객체들의 정보를 담는 곳
-- 데이터들의 모음체
-- CREATE SCHEMA
CREATE USER scUser IDENTIFIED BY scUser -- 유저생성
DEFAULT TABLESPACE schoolDB;

DROP USER scUser CASCADE; -- 유저삭제

-- 권한부여, 실습을 위해서 DBA 권한을 부여하자
-- DBA권한을 남발하면
-- DB 보안적인 측면에서 무결성을 해칠 수 있는 여지가 많다
-- DB와 관련된 보안용어
-- 보안침해 : 허가받지 않은 사용자가 접속하여 문제를 일으키는것
-- 무결성 침해(파괴) : 허가받은 사용자가 권한을 남용하여 문제를 일으킴
-- CUD(추가, 수정, 삭제)등을 잘못하여 데이터에 문제가 생기는 것
GRANT DBA TO scUser; -- dba권한부여