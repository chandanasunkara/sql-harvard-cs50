SELECT "s"."name" AS "School name", "e"."per_pupil_expenditure" AS "Per pupil expenditure", "se"."exemplary" AS "% of exemplary district staff"
FROM "schools" AS "s"
JOIN "expenditures" AS "e" ON "s"."district_id" = "e"."district_id"
JOIN "staff_evaluations" AS "se" ON "s"."district_id" = "se"."district_id"
WHERE "e"."per_pupil_expenditure" > (
    SELECT AVG("expenditures"."per_pupil_expenditure") FROM "expenditures"
)
AND "se"."exemplary" > (
    SELECT AVG("staff_evaluations"."exemplary") FROM "staff_evaluations"
    WHERE "unsatisfactory" = 0 AND "needs_improvement" = 0
)
ORDER BY "se"."exemplary" DESC, "e"."per_pupil_expenditure" DESC;
