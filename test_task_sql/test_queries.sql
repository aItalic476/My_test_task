USE test_task;

SELECT DISTINCT persons.name FROM persons 
INNER JOIN request ON persons.id = request.user_id;

SELECT name FROM persons WHERE YEAR(birthday)='1990';

SELECT persons.name, 
request.id, 
request.created, 
request.updated FROM persons 
INNER JOIN request 
ON persons.id=request.user_id;

SELECT name FROM persons WHERE name LIKE '%а%';

SELECT name FROM persons WHERE CAST(YEAR(birthday) AS INTEGER) BETWEEN 1991 AND 1995;