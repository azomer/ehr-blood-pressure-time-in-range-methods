-- Define systolic blood pressure target range
-- Prepare BP measurements for time-in-range calculation

/*
Assumes existing tables:
- bp_population(patient_id, encounter_id, admit_date, discharge_date)
- vital_signs(patient_id, encounter_id, vital_date, systolic_bp)

Purpose:
Identifies systolic BP measurements and flags
whether they fall within a predefined target range.
*/

SELECT
    v.patient_id,
    v.encounter_id,
    v.vital_date,
    v.systolic_bp,
    CASE
        WHEN v.systolic_bp BETWEEN 110 AND 140 THEN 1
        ELSE 0
    END AS in_target_range
FROM vital_signs v
JOIN bp_population b
  ON v.encounter_id = b.encounter_id;

-- Output shape:
-- patient_id | encounter_id | vital_date | systolic_bp | in_target_range
