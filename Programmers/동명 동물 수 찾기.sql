-- https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성. 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회
SELECT NAME, NEW.MB 
FROM(
    SELECT NAME, COUNT(ANIMAL_ID) AS MB
    FROM ANIMAL_INS
    WHERE NAME IS NOT NULL
    GROUP BY NAME
    )NEW
WHERE NEW.MB >= 2 
ORDER BY NAME
;