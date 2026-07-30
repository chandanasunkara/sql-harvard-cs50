SELECT "name", "pupils" FROM "expenditures"
JOIN "districts" on "expenditures"."district_id" = "districts"."id";
