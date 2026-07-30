-- CREATE INDEX "search_messages_by_to_user_id"
-- ON "messages"("to_user_id");

-- EXPLAIN QUERY PLAN
SELECT "username" FROM "users"
WHERE "id" = (
    SELECT "to_user_id" FROM "messages"
    GROUP BY "to_user_id"
    ORDER BY COUNT("id") DESC
    LIMIT 1
);
