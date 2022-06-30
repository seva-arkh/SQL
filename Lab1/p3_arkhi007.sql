/*1*/
UPDATE Employee
SET HomeZipCode = 55414
WHERE EmpID = 2;

SELECT *
FROM Employee E
WHERE E.EmpID = 2;

/*2*/
UPDATE Graduate
SET GradYear = GradYear + 3
WHERE GradYear > 2002;

/*3*/
UPDATE Graduate
SET GradYear = GradYear - 2
FROM Employee E
WHERE E.EmpID = Graduate.EmpID and E.HomeZipCode = 55414;

/*4*/
DELETE
FROM ProjectManager
WHERE ProjID = 2;

DELETE
FROM EmpProject
WHERE ProjID = 2;

DELETE
FROM Project
WHERE ProjID = 2;
