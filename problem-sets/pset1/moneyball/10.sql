SELECT p.first_name, p.last_name, s.salary, prf.HR, s.year FROM players AS p
JOIN salaries AS s ON p.id = s.player_id
JOIN performances AS prf ON prf.player_id = p.id AND prf.year = s.year
ORDER BY p.id, s.year DESC, prf.HR DESC, s.salary DESC;

