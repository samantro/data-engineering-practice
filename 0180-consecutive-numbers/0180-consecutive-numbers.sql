# Write your MySQL query statement below
with cte as ( 
    select num, 
    lead(num) over (order by id) as l1, 
    lag(num) over (order by id) as l2
    from logs
)

select distinct num as ConsecutiveNums 
from cte
where num = l1 and l1 = l2;