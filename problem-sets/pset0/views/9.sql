SELECT "english_title", "artist"
FROM "views"
WHERE "brightness" = (
    SELECT MAX(brightness)
	FROM "views"
);

/*
SELECT "english_title", "artist"
FROM "views"
ORDER BY "brightness" DESC
LIMIT 1;
*/
