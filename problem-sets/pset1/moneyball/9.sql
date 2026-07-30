SELECT t.name, ROUND(AVG(s.salary), 2) AS "average salary" FROM teams AS t
JOIN salaries AS s ON s.team_id = t.id
WHERE s.year = 2001
GROUP BY s.team_id
ORDER BY "average salary" -- AVG(s.salary)
LIMIT 5;
