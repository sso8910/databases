-- https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 동물 이름 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성
-- 결과는 이름 순으로 조회
SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE NAME LIKE '%EL%'
AND ANIMAL_TYPE='DOG'
ORDER BY NAME
;