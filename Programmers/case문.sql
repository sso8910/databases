SELECT *,
CASE
    WHEN Price < 30 THEN '저렴'
    WHEN Price>=30 and Price < 60 THEN '적당'
    ELSE '비쌈'
END as Val
from Products
where CategoryID in (3,6)
order by SupplierID Desc
;