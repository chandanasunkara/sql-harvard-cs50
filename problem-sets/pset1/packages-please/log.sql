
-- *** The Lost Letter ***
SELECT * FROM "addresses" WHERE "address" LIKE '2 %' ORDER BY "address";
-- this gave a list of addresses starting with '2 ' from which I got to know that the correct to address is '2 Finnigan Street'

SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '900 Somerville Avenue')
    AND "to_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '2 Finnigan Street')
);
-- this gave Drop address_id as 854

SELECT * FROM "addresses" WHERE "id" = 854
-- this gave Drop address and type of Drop address





-- *** The Devious Delivery ***
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" IS NULL;
);
-- this gave address_id where Drop action happened as 348 and package_id as 5098

SELECT type FROM "addresses" WHERE "id" = 348;
-- this gave Police Station

SELECT contents FROM "packages" WHERE "id" = 5098
-- this gave Duck debugger





-- *** The Forgotten Gift ***
SELECT * FROM "scans"
WHERE "package_id" = (
    SELECT "id" FROM "packages"
    WHERE "from_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '109 Tileston Street')
    AND "to_address_id" = (
        SELECT "id" FROM "addresses"
        WHERE "address" = '728 Maple Place')
);
-- this gave package_id = 9523 and it shows that the package was picked up after being dropped by driver_id = 17

SELECT * FROM "drivers" WHERE "id" = 17;
-- gave driver's name as Mike with whom the package is

SELECT * FROM "packages" WHERE "id" = 9523;
-- gave that the contents of the package are Flowers
