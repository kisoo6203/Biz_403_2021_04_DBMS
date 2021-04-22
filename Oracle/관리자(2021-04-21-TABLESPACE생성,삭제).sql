-- 관리자 권한 접속

-- TABLESPACE 생성하기
CREATE TABLESPACE iolistDB
DATAFILE 'C:/oraclexe/data/iolist.dbf'
SIZE 1M AUTOEXTEND ON NEXT 1K;

-- TABLESPACE 삭제하기
-- 반드시 옵션추가해야함
DROP TABLESPACE iolistDB --반드시작성
INCLUDING CONTENTS AND DATAFILES --옵션 --모든컨텐츠와 데이터파일까지 삭제
CASCADE CONSTRAINTS; --옵션

-- 새로운 사용자 등록
CREATE USER iouser IDENTIFIED BY iouser
DEFAULT TABLESPACE iolistDB;

-- 사용자에게 권한부여
GRANT DBA TO iouser;

DROP USER iouser CASCADE;