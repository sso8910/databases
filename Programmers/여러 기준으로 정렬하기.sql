-- https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 모든 동물의 아이디와 이름, 보호 시작일을 이름 순으로 조회하는 SQL문을 작성
SELECT ANIMAL_ID,NAME,DATETIME from ANIMAL_INS
ORDER BY NAME, DATETIME DESC
;
