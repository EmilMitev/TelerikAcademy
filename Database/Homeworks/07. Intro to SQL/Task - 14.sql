USE TelerikAcademy

SELECT FirstName + ' ' + LastName AS FullName
FROM Employees
WHERE Salary IN (25000, 14000, 12500, 23600)