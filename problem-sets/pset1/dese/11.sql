SELECT "s"."name", "e"."per_pupil_expenditure" AS "Per pupil expenditure", "gr"."graduated" AS "Graduation rate"
FROM "schools" AS "s"
JOIN "expenditures" AS "e" ON "s"."district_id" = "e"."district_id"
JOIN "graduation_rates" AS "gr" ON "s"."id" = "gr"."school_id"
ORDER BY "e"."per_pupil_expenditure" DESC, "s"."name";
