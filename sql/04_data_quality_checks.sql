-- Data quality checks
-- Validate BP measurement completeness and aggregation logic

/*
Purpose:
Ensures BP time-in-range calculations are based
on sufficient and valid data.
*/

-- Patients with very few BP measurements
SELECT
    patient_id,
    COUNT(*) AS bp_count
FROM bp_target_flags
GROUP BY patient_id
HAVING COUNT(*) < 3;

-- Check for null BP values
SELECT
    COUNT(*) AS null_bp_count
FROM vital_signs
WHERE systolic_bp IS NULL;

