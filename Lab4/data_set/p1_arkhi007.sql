/*1*/
SELECT S.sname
FROM student S
WHERE S.age>25;
/*Time: 82.269 ms*/

SELECT S.sname
FROM student S
WHERE S.age=20;
/*Time: 22.194 ms*/

/*For both queries it just scans student table finding for the right condition.*/


/*2*/
CREATE INDEX index_name ON student USING hash(age);

SELECT S.sname
FROM student S
WHERE S.age>25;
/*Time: 49.234 ms*/

SELECT S.sname
FROM student S
WHERE S.age=20;
/*Time: 7.491 ms*/

/*The difference is significant for both queries comparing to (1).*/




/*3*/
CREATE INDEX index_name_1 ON student (age);

SELECT S.sname
FROM student S
WHERE S.age>25;
/*Time: 46.132 ms*/

SELECT S.sname
FROM student S
WHERE S.age=20;
/*Time: 4.620 ms*/

/* For the first query the result is approximately the same as in (2).
The results of the second query is better than in (2)*/





/*4*/
CREATE INDEX index_name_2 ON student (age,sname);

SELECT S.sname
FROM student S
WHERE S.age>25;
/*Time: 47.878 ms*/

SELECT S.sname
FROM student S
WHERE S.age=20;
/*Time: 8.015 ms*/

/* The results are similar to (2). */
