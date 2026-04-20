# Write your MySQL query statement below
with cte as (
    select salary, departmentId, name, 
    rank() over (partition by departmentId order by salary desc ) as r
    from employee
)

-- select * from cte;
select d.name as Department, c.name as Employee,  Salary
from department d
left join cte c
on c.departmentId = d.id
where r = 1;