SELECT "p"."first_name", "p"."last_name", "s"."salary" FROM "salaries" AS "s"
JOIN "players" AS "p" ON "s"."player_id" = "p"."id"
WHERE "s"."year" = 2001
ORDER BY "s"."salary", "p"."first_name", "p"."last_name", "p"."id"
LIMIT 50;
