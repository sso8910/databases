-- https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 모든 레코드에 대해, 각 동물의 아이디와 이름, 들어온 날짜1를 조회하는 SQL문을 작성.결과는 아이디 순
SELECT ANIMAL_ID, NAME, Date_Format(DATETIME,'%Y-%m-%d') 
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
;