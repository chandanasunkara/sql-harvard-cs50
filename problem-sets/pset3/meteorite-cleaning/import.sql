-- Creating meteorites_temp table
CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" TEXT PRIMARY KEY,
    "nametype" TEXT,
    "class" TEXT,
    "mass" NUMBER,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" NUMBER,
    "long" NUMBER
);


-- Run the following to populate the meteorites_temp table with the values in the meteorites.csv file
.import --csv --skip 1 meteorites.csv "meteorites_temp"


-- Updating meteorites_temp table values
UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = '';

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2)
WHERE "mass" IS NOT NULL;

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = '';

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = '';

UPDATE "meteorites_temp"
SET "lat" = ROUND("lat", 2);

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = '';

UPDATE "meteorites_temp"
SET "long" = ROUND("long", 2);


-- Creating meteorites table
CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT,
    "class" TEXT,
    "mass" TEXT,
    "discovery" TEXT CHECK ("discovery" IN ("Fell", "Found")),
    "year" TEXT,
    "lat" TEXT,
    "long" TEXT
);


-- Insert values into meteorites table
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT
    "name",
    "class",
    "mass",
    "discovery",
    "year",
    "lat", "long"
FROM "meteorites_temp"
WHERE "nametype" != 'Relict'
ORDER BY "year", "name";
