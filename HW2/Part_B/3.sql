/*1*/
SELECT S.name
FROM Student S, Registers R
WHERE S.sid = R.sid AND R.cid = 4707 AND R.semester = '2021';

/*2*/
SELECT Temp.sid
FROM (SELECT R.sid, COUNT (*) AS scount
      FROM Registers R, Course C
      WHERE R.cid = C.cid AND C.Department='CSci'
      GROUP BY R.sid) AS Temp
WHERE Temp.scount = (SELECT COUNT (*)
                    FROM Course C
                    WHERE C.Department='CSci');



/*3*/
SELECT S.name
FROM Student S
WHERE S.gpa = (SELECT MAX(S2.gpa)
	 	           FROM Student S2);


/*4*/
SELECT DISTINCT R.sid
FROM Registers R
GROUP BY R.sid, R.cid
HAVING COUNT (*) = 2;


/*5*/
SELECT DISTINCT R.sid, R.cid
FROM Registers R;


SELECT Temp.sid, COUNT (*) AS scount
FROM (SELECT DISTINCT R.sid, R.cid
      FROM Registers R) AS Temp
GROUP BY Temp.sid;

SELECT Temp.sid, Temp1.sid
FROM Registers Temp,
     Registers Temp1,
      (SELECT Temp.sid, COUNT (*) AS scount
      FROM (SELECT DISTINCT R.sid, R.cid
            FROM Registers R) AS Temp
      GROUP BY Temp.sid) AS Temp4,
      (SELECT Temp.sid, COUNT (*) AS scount
      FROM (SELECT DISTINCT R.sid, R.cid
            FROM Registers R) AS Temp
      GROUP BY Temp.sid) AS Temp5

WHERE Temp.sid > Temp1.sid AND EXISTS (SELECT Temp.sid
                                        FROM Registers Temp3
                                        WHERE Temp.sid = Temp3.sid AND Temp1.cid = Temp3.cid)
      AND Temp4.sid = Temp.sid
      AND Temp5.sid = Temp1.sid
      AND Temp4.scount = Temp5.scount
GROUP BY Temp.sid, Temp1.sid


/*SELECT
FROM Registers R2,
     (SELECT DISTINCT R2.sid, R2.cid
      FROM Registers R2) AS Temp,
      ()
WHERE */

/*SELECT Temp.sid, Temp1.sid, Temp.cid, Temp.scount
FROM (SELECT R.sid, R.cid, COUNT (*) AS scount
      FROM Registers R
      GROUP BY R.sid, R.cid) AS Temp,
      (SELECT R.sid, R.cid, COUNT (*) AS scount
            FROM Registers R
            GROUP BY R.sid, R.cid) AS Temp1
WHERE Temp.sid != Temp1.sid AND Temp.cid = Temp1.cid AND Temp.scount = Temp1.scount
GROUP BY Temp.sid, Temp1.sid, Temp.cid, Temp.scount*/
