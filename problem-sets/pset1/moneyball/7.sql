SELECT "first_name", "last_name" FROM "players" AS "p"
JOIN "salaries" AS "s" ON "p"."id" = "s"."player_id"
--ORDER BY "salary" DESC
--LIMIT 1;
-- the above 2 lines omit multiple occurances of same salary so use MAX function like below
WHERE s.salary = (
    SELECT MAX(salary) from "salaries"
);
