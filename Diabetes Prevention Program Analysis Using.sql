/************
---1. viewing Table
************/
SELECT *
FROM DiabetesPreventionProgram;

---2. Checking for Null Values

SELECT COUNT(*) AS missing_data_count
FROM DiabetesPreventionProgram
WHERE location_1 IS NULL OR city IS NULL OR telephone_number IS NULL;
----No missing data nor duplicate

------3. Geographical Distribution of The Initiative
SELECT state, COUNT (*) AS Initiative_Count
FROM DiabetesPreventionProgram
GROUP BY state
ORDER BY Initiative_count DESC;
----Orlando is the state with highest distribution

-----4. Category of the program distribution
select category, count (*) AS Initiative_count
FROM DiabetesPreventionProgram
GROUP BY category;
-----Administrative Location benefitted more than community setting.

-----5. Distribution of Initiatives Across States and Categories
select state, category, count (*) AS Initiative_count
FROM DiabetesPreventionProgram
GROUP BY state, category;







