CREATE TABLE "passengers" (
    "id" INTEGER PRIMARY KEY,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER
);

CREATE TABLE "check_ins" (
    "passenger_id" INTEGER NOT NULL,
    "flight_id" INTEGER NOT NULL,
    "checkin_datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
    FOREIGN KEY("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "airports" (
    "code" TEXT PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "airlines" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL UNIQUE,
    "concourse" TEXT
);

CREATE TABLE "flights" (
    "id" INTEGER PRIMARY KEY,
    "flight_number" INTEGER NOT NULL,
    "airline_id" INTEGER,
    "from_airport_code" TEXT,
    "to_airport_code" TEXT,
    "departure_datetime" NUMERIC NOT NULL,
    "arrival_datetime" NUMERIC NOT NULL,
    FOREIGN KEY("airline_id") REFERENCES "airlines"("id"),
    FOREIGN KEY("from_airport_code") REFERENCES "airports"("code"),
    FOREIGN KEY("to_airport_code") REFERENCES "airports"("code")
);


