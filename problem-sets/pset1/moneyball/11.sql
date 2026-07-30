SELECT p.first_name, p.last_name, s.salary/prf.H AS "dollars per hit" from salaries AS s
JOIN performances AS prf ON s.player_id = prf.player_id
JOIN players AS p ON s.player_id = p.id
WHERE s.year = 2001 AND prf.year = 2001
AND prf.H != 0
ORDER BY "dollars per hit", p.first_name, p.last_name
LIMIT 10;
