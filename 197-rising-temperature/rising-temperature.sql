select id from (select id, temperature, recordDate,
lag(temperature) over (order by recordDate) as prev,
lag(recordDate) over (order by recordDate) as previ 
from weather )as w
where temperature > prev and datediff(recordDate,previ) =1;