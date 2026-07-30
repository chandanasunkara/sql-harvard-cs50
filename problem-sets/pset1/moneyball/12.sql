SELECT first_name, last_name FROM
    (SELECT p.first_name, p.last_name from players AS p
    JOIN performances AS prf ON s.player_id = prf.player_id
    JOIN salaries AS s ON s.player_id = p.id
    WHERE s.year = 2001 AND prf.year = 2001
    AND prf.H != 0
    ORDER BY s.salary/prf.H
    LIMIT 10)
INTERSECT
SELECT first_name, last_name FROM
    (SELECT p.first_name, p.last_name from players AS p
    JOIN performances AS prf ON s.player_id = prf.player_id
    JOIN salaries AS s ON s.player_id = p.id
    WHERE s.year = 2001 AND prf.year = 2001
    AND prf.RBI != 0
    ORDER BY s.salary/prf.RBI
    LIMIT 10)
ORDER BY last_name;
