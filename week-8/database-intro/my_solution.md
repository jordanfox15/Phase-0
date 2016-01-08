1.
SELECT * FROM states;

2.
SELECT * FROM regions;

3.
SELECT state_name, population FROM states;

4.
SELECT state_name, population FROM states
ORDER BY population DESC;

5.
SELECT state_name FROM states
WHERE region_id=7;

6.
SELECT state_name, population_density FROM states
WHERE population_density>50
ORDER BY population_density;

7.
SELECT state_name FROM states
WHERE population>=1000000 AND population <= 1500000;

8.
SELECT state_name, region_id FROM states
ORDER BY region_id;

9.
SELECT region_name FROM regions
WHERE region_name LIKE '%Central%';

10.
SELECT regions.region_name, states.state_name FROM regions
INNER JOIN states ON regions.id=states.region._id;


https://github.com/jordanfox15/Phase-0/blob/master/week-8/database-intro/Untitled.png


Reflections

What are databases for?
-Storing large amounts of data with easy access and storage.

What is a one-to-many relationship?
-Where all elements of a 1st group belong to a 2nd group but not all elements of 2nd group belong to the 1st group.

What is a primary key? What is a foreign key? How can you determine which is which?
-A foreign key is a field in a table that identifies the row, or primary key, of another table.  

How can you select information out of a SQL database? What are some general guidelines for that?
-By using the command SELECT.  Semi-colon always goes at the end of the command even if it takes up more then one line.