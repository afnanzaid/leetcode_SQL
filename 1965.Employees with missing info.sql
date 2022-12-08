1965.Employees With missing informmation 

SELECT employee_id FROM Employees WHERE employee_id not in (SELECT employee_id FROM Salaries) 
UNION
SELECT employee_id FROM Salaries WHERE employee_id not in (SELECT employee_id FROM Employees)


OR

SELECT p.employee_id
FROM (SELECT employee_id FROM Employees
	UNION ALL
	SELECT employee_id FROM Salaries) as p
GROUP BY p.employee_id
HAVING COUNT(*) > 1
Order by p.employee_id