# Write your MySQL query statement below
Select ee.unique_id, e.name
from Employees e
left join EmployeeUNI ee
on(ee.id=e.id);