SELECT "city", COUNT("id") AS "Public Schools Count" FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
HAVING "Public Schools Count" <= 3
ORDER BY "Public Schools Count" DESC, "city";
