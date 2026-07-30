-- Average brightness of each artist
SELECT artist AS "Artist", AVG(brightness) AS "Average Brightness"
FROM views
GROUP BY artist
ORDER BY "Average Brightness" DESC;
