175.Combine two tables

SELECT firstname, lastname, city, state
FROM person as a
LEFT JOIN Address as b
ON a.personId = b.personId