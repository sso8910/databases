-- 
SELECT CategoryID, Count(Price),AVG(Price),Sum(Price)
FROM Products
GROUP BY CategoryID
Order by CategoryID DESC
;

-- 알리아스(별칭) 사용
select TB_10.*
from (
	select count(CustomerID) (as:생략가능) cnt , Country : Count도 알리아스 줘야함 
	FROM Customers
	GROUP BY Country
)TB_10-> 대내외적으로 쓰기 위해서 원본값이 변경된 테이블 이름을 지정할 때 ()name
ORDER BY TB_10.cnt DESC;
