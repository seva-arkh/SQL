/*1*/
SELECT S.sname
FROM student S
WHERE S.age<30;
/*Time: 42.925 ms*/

SELECT DISTINCT S.sname
FROM student S
WHERE S.age<30;
/*Time: 59.340 ms*/

/* The runtime of the second query is bigger. Because the second query makes
the same as the first query. Plus it  needs to check S.sname on duplicates.*/




/*2*/

SELECT DISTINCT S.gpa, S.sex, S.age
FROM student S
WHERE S.age>50;
/*Time: 105.690 ms*/

SELECT S.gpa, S.sex, MIN(S.age) AS minage
FROM student S
GROUP BY S.gpa, S.sex, S.age
HAVING S.age > 50;
/*Time: 23.603 ms*/

/*3*/
SELECT DISTINCT M.dname
FROM major M
JOIN student S On M.sid=S.sid
WHERE S.age<30;
/*Time: 434.011 ms*/

SELECT DISTINCT M.dname
FROM major M, student S
WHERE M.sid=S.sid AND S.sid IN (SELECT S1.sid
                                FROM student S1
                                WHERE S1.age<30)
/*Time: 526.206 ms*/

/*The first one is faster.
The second query needs one more operation on creating S.sid where S.age<30.
The first one just checks this when joining.*/
