-- Define blood pressure analysis population
-- Adult patients with sufficient BP measurements
-- Establish observation window

/*
Assumes existing tables:
- patients(patient_id, age)
- encounters(patient_id, encounter_id, admit_date, discharge_date)
- vital_signs(patient_id, encounter_id, vital_date, systolic_bp)

Purpose:
Defines the eligible population for blood pressure
time-in-range calculations.
*/

WITH adult_patients AS (
    SELECT
        p.patient_id
    FROM patients p
    WHERE p.age >= 18
),

bp_encounters AS (
    SELECT DISTINCT
        v.patient_id,
        v.encounter_id,
        e.admit_date,
        e.discharge_date
    FROM vital_signs v
    JOIN encounters e
      ON v.encounter_id = e.encounter_id
    JOIN adult_patients a
      ON v.patient_id = a.patient_id
)

SELECT
    patient_id,
    encounter_id,
    admit_date,
    discharge_date
FROM bp_encounters;

-- Output shape:
-- patient_id | encounter_id | admit_date | discharge_date
