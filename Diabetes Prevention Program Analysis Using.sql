/************
---1. viewing Table
************/

```sql
SELECT *
FROM DiabetesPreventionProgram;
```

---2. Checking for Null Values
```sql
SELECT COUNT(*) AS missing_data_count
FROM DiabetesPreventionProgram
WHERE location_1 IS NULL OR city IS NULL OR telephone_number IS NULL;
```


