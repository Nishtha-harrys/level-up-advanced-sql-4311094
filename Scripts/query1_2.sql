-- Get a list of salespeople with zero sales
select DISTINCT title from employee;
SELECT emp.employeeId, emp.firstName, emp.lastName, emp.title, s.salesId, emp.managerId
FROM employee as emp
LEFT JOIN sales as s
  ON emp.employeeId = s.employeeId
WHERE emp.title = 'Sales Person'
AND s.salesId IS NULL;

