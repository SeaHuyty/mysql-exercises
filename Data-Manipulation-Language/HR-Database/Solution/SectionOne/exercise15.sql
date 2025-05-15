-- 15. Retrieve country name for each department.
SELECT 
	department.DEPARTMENT_ID,
    department.DEPARTMENT_NAME,
    country.COUNTRY_ID,
    country.COUNTRY_NAME
FROM departments department
JOIN locations location ON department.LOCATION_ID = location.LOCATION_ID
JOIN countries country ON location.COUNTRY_ID = country.COUNTRY_ID;