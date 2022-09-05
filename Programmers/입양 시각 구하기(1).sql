-- https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 09:00부터 19:59까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성
-- 결과는 시간대 순으로 정렬
SELECT substring(datetime,11,3)as hour, count(substring(datetime,11,3)) as hour_count
from animal_outs
group by substring(datetime,11,3)
having hour>=9 and hour<20
order by hour
;