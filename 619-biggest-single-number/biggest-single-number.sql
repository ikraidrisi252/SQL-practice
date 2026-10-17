select max(case when cnt = 1 then num end) as num
from (
    select num, count(num) as cnt
    from MyNumbers
    group by num
) t;