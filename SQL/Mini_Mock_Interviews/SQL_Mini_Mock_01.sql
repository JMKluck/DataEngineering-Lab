DROP TABLE IF EXISTS visits;

CREATE TABLE visits (
    visit_id INT PRIMARY KEY,
    patient_name VARCHAR(100),
    visit_date DATE,
    department VARCHAR(50),
    visit_cost DECIMAL(10,2)
);

INSERT INTO visits (
    visit_id,
    patient_name,
    visit_date,
    department,
    visit_cost
)
VALUES
(1, 'Alice', '2026-11-01', 'Cardiology', 250.00),
(2, 'Bob', '2026-11-02', 'Neurology', 300.00),
(3, 'Carol', '2026-11-03', 'Cardiology', 450.00),
(4, 'David', '2026-11-04', 'Orthopedics', 200.00),
(5, 'Emma', '2026-11-05', 'Neurology', 350.00),
(6, 'Frank', '2026-11-06', 'Cardiology', 150.00),
(7, 'Grace', '2026-11-07', 'Orthopedics', 400.00),
(8, 'Henry', '2026-11-08', 'Neurology', 500.00);

-- =====================================
-- SQL MINI MOCK - QUESTION 1
-- * All columns from the visits table.
-- =====================================
SELECT *
FROM visits;

-- =====================================
-- SQL MINI MOCK - QUESTION 1
-- * All columns from the visits table.
-- * Only records where visit_id is greater than 3.
-- * Results sorted by visit_id in descending order.
-- =====================================
SELECT *
FROM visits
WHERE visit_id > 3
ORDER BY visit_id DESC; 
-- =====================================
-- SQL MINI MOCK - QUESTION 2
-- * Display patient_name, department, and visit_cost.
-- * Retrieve only Cardiology patients.
-- * Sort visit_cost from highest to lowest.
-- =====================================
SELECT
      patient_name
    , department 
    , visit_cost 
FROM visits 
WHERE department = 'Cardiology'
ORDER BY visit_cost DESC;

-- =====================================
-- SQL MINI MOCK - QUESTION 3
-- * Calculate total number of visits.
-- * Calculate total visit costs.
-- * Calculate average visit cost.
-- * Calculate highest visit cost.
-- * Calculate lowest visit cost.
-- =====================================
SELECT 
      COUNT(visit_id) AS total_visits
    , SUM(visit_cost) AS total_cost
    , ROUND(AVG(visit_cost), 2) AS average_cost
    , MAX(visit_cost) AS highest_cost
    , MIN(visit_cost) AS lowest_cost 
FROM visits;

-- =====================================
-- SQL MINI MOCK - QUESTION 4
-- * Display each department.
-- * Calculate total visits per department.
-- * Calculate total cost per department.
-- * Calculate average cost per department.
-- * Round average cost to 2 decimal places.
-- * Sort total cost from highest to lowest.
-- =====================================
SELECT 
	department
	, COUNT(visit_id) AS total_visits
	, SUM(visit_cost) as total_cost
	, ROUND(AVG(visit_cost), 2) as average_cost 
FROM visits
GROUP BY department 
ORDER BY total_cost DESC; 


