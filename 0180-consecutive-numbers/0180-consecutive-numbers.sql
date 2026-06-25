# Write your MySQL query statement below
with cte as (
    select *, lead(num) over(order by id) as l1,
    lag(num) over(order by id) as l2
    from Logs
)

select distinct num as ConsecutiveNums from cte
where l1 = l2 and l1 = num;