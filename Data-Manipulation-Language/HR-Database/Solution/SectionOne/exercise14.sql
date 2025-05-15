-- 14. Retrieve region id and region name for each country.
SELECT
	country.COUNTRY_ID,
    country.COUNTRY_NAME,
    region.REGION_ID,
    region.REGION_NAME
FROM countries country
RIGHT JOIN regions region
ON country.REGION_ID = region.REGION_ID;