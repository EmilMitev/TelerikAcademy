USE TelerikAcademy

SELECT COUNT(*) AS EmployeeInSales
FROM Employees e
	JOIN Departments d
		ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'