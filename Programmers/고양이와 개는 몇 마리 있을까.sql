-- https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 고양이와 개가 각각 몇 마리인지 조회하는 SQL문.고양이를 개보다 먼저 조회
SELECT ANIMAL_TYPE , COUNT(ANIMAL_TYPE)
FROM ANIMAL_INS
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE
;