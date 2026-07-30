SELECT "city", COUNT("id") AS "Public Schools Count" FROM "schools"
WHERE "type" = "Public School"
GROUP BY "city"
ORDER BY "Public Schools Count" DESC, "city"
LIMIT 10;
