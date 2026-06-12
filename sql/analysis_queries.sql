-- Total treatment cost by hospital
SELECT Hospital,
       SUM(Treatment_Cost) AS Total_Cost
FROM patient_data
GROUP BY Hospital;

-- Average treatment cost by diagnosis
SELECT Diagnosis,
       AVG(Treatment_Cost) AS Avg_Cost
FROM patient_data
GROUP BY Diagnosis;

-- Number of patients by diagnosis
SELECT Diagnosis,
       COUNT(*) AS Patient_Count
FROM patient_data
GROUP BY Diagnosis;

-- Top 5 most expensive treatments
SELECT *
FROM patient_data
ORDER BY Treatment_Cost DESC
LIMIT 5;

-- Average patient age by diagnosis
SELECT Diagnosis,
       AVG(Age) AS Avg_Age
FROM patient_data
GROUP BY Diagnosis;
