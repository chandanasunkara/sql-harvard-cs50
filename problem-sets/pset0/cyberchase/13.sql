SELECT "season", "episode_in_season", "title", "air_date" FROM "episodes"
WHERE ("season" = 12 AND "air_date" LIKE "2020%")
OR ("season" = 11 AND "air_date" LIKE "2018%")
ORDER BY "production_code" DESC; -- ORDERBY "air_date" DESC;
