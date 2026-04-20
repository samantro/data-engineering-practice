# Write your MySQL query statement below
with cte as (
    select distinct score 
    from scores
), 
cte2 as (
    select score, 
    rank() over (order by score desc) as 'rank'
    from cte
)

select s.score, c.rank 
from cte2 c
left join scores s
on s.score = c.score;