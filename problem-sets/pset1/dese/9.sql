SELECT "name" FROM "expenditures"
JOIN "districts" on "expenditures"."district_id" = "districts"."id"
WHERE "pupils" = (
    SELECT MIN("pupils") from "expenditures"
);
