CREATE TABLE "ingredients" (
    "name" TEXT PRIMARY KEY,
    "unit" TEXT NOT NULL,
    "per_unit_price" NUMERIC NOT NULL CHECK("per_unit_price" >= 0)
);

CREATE TABLE "donuts" (
    "name" TEXT PRIMARY KEY,
    "is_gluten_free" TEXT NOT NULL CHECK("is_gluten_free" IN ("yes", "no")),
    "price_per_donut" NUMBER NOT NULL CHECK("price_per_donut" >= 0)
);

CREATE TABLE "orders" (
    "order_num" INTEGER PRIMARY KEY,
    "customer_id" INTEGER NOT NULL,
    FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL
);

CREATE TABLE "ingredients_in_each_donut" (
    "donut_name" TEXT NOT NULL,
    "ingredient_name" TEXT NOT NULL,
    PRIMARY KEY("donut_name", "ingredient_name"),
    FOREIGN KEY("donut_name") REFERENCES "donuts"("name"),
    FOREIGN KEY("ingredient_name") REFERENCES "ingredients"("name")
);

CREATE TABLE "ordered_items" (
    "order_id" INTEGER NOT NULL,
    "donut_name" TEXT NOT NULL,
    "quantity" INTEGER NOT NULL CHECK("quantity" > 0),
    PRIMARY KEY("order_id", "donut_name"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("order_num"),
    FOREIGN KEY ("donut_name") REFERENCES "donuts"("name")
);
