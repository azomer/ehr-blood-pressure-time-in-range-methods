# ehr-blood-pressure-time-in-range-methods
# Blood Pressure Time-in-Range Analytics (EHR-Based)

## Context
This repository reflects analytical methods used to support clinical
research conducted during **2020–2021** at an academic
medical center. The author was **acknowledged for analytical assistance**
in a related JAMA-affiliated publication.

This repository is **methodological** and does **not reproduce published
analyses or results**.

---

## Overview
The project demonstrates how systolic blood pressure (SBP)
**time-in-target-range** metrics can be constructed from longitudinal
EHR vital sign data. Time-in-range measures are increasingly used to
characterize blood pressure control beyond single-point measurements.

---

## Project Structure and Analytical Approach

### 1. Define BP Analysis Population
**File:** `01_define_bp_population.sql`

- Identifies adult patients with valid encounters
- Ensures availability of systolic BP measurements
- Establishes observation windows for analysis

---

### 2. Define BP Target Range
**File:** `02_define_bp_target_range.sql`

- Applies a predefined systolic BP target range
- Flags individual BP measurements as in-range or out-of-range
- Prepares data for aggregation

---

### 3. Calculate Time in Target Range
**File:** `03_calculate_time_in_range.sql`

- Aggregates BP measurements at the patient level
- Calculates proportion of measurements within target range
- Produces interpretable time-in-range metrics

---

### 4. Data Quality Checks
**File:** `04_data_quality_checks.sql`

- Identifies patients with insufficient BP data
- Checks for missing or invalid BP measurements
- Supports reliability of downstream analyses

---

## Skills Demonstrated
- Longitudinal vital sign analysis  
- Time-in-range metric construction  
- SQL aggregation and window logic  
- EHR data quality validation  

---

## Author
**Azza Omer**  
Healthcare Analytics | EHR Data | Clinical Quality Metrics
