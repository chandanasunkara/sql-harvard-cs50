-- Players were born in California, taller than 6'6'' (78 inches)
SELECT "first_name" AS "First Name", "last_name" AS "Last Name", "height" AS "Height(inches)"
FROM "players"
WHERE "birth_state" = 'CA' AND "height" >= 78
ORDER BY "height" DESC, "first_name", "last_name";
