-- Calculate systolic BP time in target range
-- Aggregate BP measurements at the patient level

/*
Assumes existing input:
- bp_target_flags(patient_id, encounter_id, vital_date, in_target_range)

Purpose:
Calculates the proportion of BP measurements
that fall within the target range.
*/

SELECT
    patient_id,
    COUNT(*) AS total_bp_measurements,
    SUM(in_target_range) AS bp_in_range_count,
    ROUND(
        SUM(in_target_range) * 1.0 / COUNT(*),
        3
    ) AS proportion_time_in_range
FROM bp_target_flags
GROUP BY patient_id;

-- Output shape:
-- patient_id | total_bp_measurements | bp_in_range_count | proportion_time_in_range
