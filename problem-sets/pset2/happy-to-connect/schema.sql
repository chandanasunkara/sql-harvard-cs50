CREATE TABLE "users" (
    "id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "username" TEXT UNIQUE,
    "password" TEXT NOT NULL
);

CREATE TABLE "schools" (
    "name" TEXT PRIMARY KEY,
    "type" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "year" INTEGER NOT NULL
);

CREATE TABLE "companies" (
    "name" TEXT PRIMARY KEY,
    "industry" TEXT NOT NULL,
    "location" TEXT NOT NULL
);

CREATE TABLE "connections" (
    "user1" INTEGER,
    "user2" INTEGER,
    FOREIGN KEY("user1") REFERENCES "users"("id"),
    FOREIGN KEY("user2") REFERENCES "users"("id")
);

CREATE TABLE "school_affiliations" (
    "user_id" INTEGER,
    "school_name" TEXT,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC,
    "type" TEXT NOT NULL,
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("school_name") REFERENCES "schools"("name")
);

CREATE TABLE "company_affiliations" (
    "user_id" INTEGER,
    "company_name" TEXT,
    "title" TEXT NOT NULL,
    "start_date" NUMERIC NOT NULL,
    "end_date" NUMERIC,
    "employment_status" CHECK("employment_status" IN ("active", "inactive")),
    FOREIGN KEY("user_id") REFERENCES "users"("id"),
    FOREIGN KEY("company_name") REFERENCES "companies"("name")
);
