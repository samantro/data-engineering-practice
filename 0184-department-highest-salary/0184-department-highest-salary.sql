# Write your MySQL query statement below
with cte as (
    select max(salary) as s, id, departmentId
    from employee
    group by departmentId
)

select d.name as Department,e.name as Employee, s as salary
from cte c
left join Employee e on c.departmentId = e.departmentId and  c.s = e.salary
left join Department d on c.departmentId = d.id;