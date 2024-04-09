-- Retrieve a list of employers, including first and last names, and the first and last names of their immediate managers.
SELECT emp.firstName as EmployeeFirstName, 
  emp.lastName as EmployeeLastName, 
  man.firstName as ManagerFirstName, 
  man.lastName as ManagerLastName
FROM employee as emp
INNER JOIN employee as man
  ON emp.managerId = man.employeeId
