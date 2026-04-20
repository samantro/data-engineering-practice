# Write your MySQL query statement below
with cte as ( 
    select num, 
    lead(num) over () as l1, 
    lag(num) over () as l2
    from logs
)

select distinct num as ConsecutiveNums 
from cte
where num = l1 and l1 = l2;