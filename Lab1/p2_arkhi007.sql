/*1*/
SELECT E.EmpName
FROM Employee E
WHERE E.HomeZipCode=55414 or E.HomeZipCode=55455;

/*2*/
SELECT P.ProjName
FROM Project P, ProjectManager PM
WHERE P.ProjID=PM.ProjID;

/*3*/
SELECT P.ProjName, COUNT (*) AS scount
FROM Project P, EmpProject EP
WHERE P.ProjID = EP.ProjID
GROUP BY P.ProjID
HAVING COUNT (*)>0;

/*4*/
SELECT U.UnivName
FROM University U, (SELECT G.UnivID, COUNT (*) AS scount
      FROM Graduate G
      WHERE EXISTS (SELECT *
                    FROM ProjectManager PM
                    WHERE G.EmpID = PM.MgrID)
      GROUP BY G.UnivID) AS Temp
WHERE U.UnivID = Temp.UnivID and Temp.scount=(SELECT MAX(Temp2.scount)
                  FROM (SELECT G.UnivID, COUNT (*) AS scount
                        FROM Graduate G
                        WHERE EXISTS (SELECT *
                                      FROM ProjectManager PM
                                      WHERE G.EmpID = PM.MgrID)
                        GROUP BY G.UnivID) AS Temp2);

/*5*/
SELECT E.EmpName, D.DeptName, G.GradYear
FROM Employee E, Department D, Graduate G
WHERE E.DeptID = D.DeptID and E.EmpID = G.EmpID;

/*6*/

SELECT P.ProjName
FROM Project P, (SELECT EP.ProjID, COUNT (*) AS scount
                  FROM EmpProject EP
                  GROUP BY EP.ProjID) AS Temp
WHERE P.ProjID = Temp.ProjID and Temp.scount = (SELECT MAX(Temp2.scount)
                                                FROM (SELECT EP.ProjID, COUNT (*) AS scount
                                                                  FROM EmpProject EP
                                                                  GROUP BY EP.ProjID) AS Temp2);
