## HW2
#A. Relational Algebra: 
Consider the following relation with its schema:<br />
Student(sid, name, gpa)<br /> 
Course(cid, name, department)<br /> 
Registers(sid, cid, semester)__

Provide the Relational Algebra for each of the following query:
1. Find the name of students who take a course with cid = CSci 4707 in Fall 2021.
2. Find the student id(s) who have taken all courses within the Computer Science department.
3. Find the name of the student who has the highest gpa.
4. Find the student id(s) who have taken the same course in exactly two different semesters.
For example, Alice takes CSci 4707 in Fall 2020 and Spring 2021 while Bob takes CSci 4707
in Spring 2020, Fall 2020, and Spring 2021. You should return Alice as the answer.
5. Find the combination of student id(s) who have taken the same exact courses. Each combination of student id(s) must only appear once. For example, Bob and Alice take CSci 5708 and 4707 while Tom takes CSci 5708 only. Only either Bob and Alice or Alice and Bob,
but not both, must be returned.

#B. SQL Query 
Provide the SQL query for each of the following query: (You cannot store any intermediate results using VIEW):
1. Problem A1 above.
2. Problem A2 above.
3. Problem A3 above.
4. Problem A4 above.
5. Problem A5 above.
