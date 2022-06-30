## Lab4
The datasets used for this lab has the following schema (keys are underlined):
• student(sid, sname, sex, age, year, gpa)
• dept(dname, numphds)
• major(dname, sid)

# PART 1: Effect of Using Indexes (50 Points)

Note: Use the following command to enable the execution time for each query: “\timing”
1. Run the following two queries: “Find the name of students who is older than 25 years old” and “Find the name of students who has an age of 20”. What is the execution time for each query? Explain on how the query is executed for each query.
2. Create a hash index on age and run the above two queries. What is the execution time for each query? Is there any difference from the previous result? Explain on how the query is executed for each query. The syntax to create a hash index on an attribute is “CREATE INDEX index_name ON table_name USING hash(attribute_name)”.
3. Create a B+tree index on age and run the above two queries. What is the execution time for
each query? Is there any difference from the previous result on (1) and (2)? Explain on how the query is executed for each query. The syntax to create a B-tree index on an attribute is “CREATE INDEX index_name ON table_name (attribute_name)”.
4. Create a B+tree index on <age, sname> and run the above two queries. What is the execution time for each query? Is there any difference from the previous result on (1), (2), and (3)? Explain on how the query is executed for each query.
5. Provide a query which contains age in the WHERE clause of the query where the query processor will not use any of the provided indexes above. Explain why.

# PART 2: Variants of SQL Query

1. Write a query to select all students with age < 30, and record the execution time. Then, use the DISTINCT keyword. Is there a difference in the execution time? Why?
2. Provide two queries that can show the difference in performance between having a condition in WHERE clause, and a condition in HAVING clause. Both queries should have same output.
3. Write a query to get the names of departments that have one or more majors who are under
30 years old. Provide two variants of this query; the first variant uses JOIN and WHERE, and the second variant uses IN and a nested query. Do they have the same execution time? If not, which variant is efficient? Why?
