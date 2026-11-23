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
--  * All columns from the visits table.
--  * Only records where visit_id is greater than 3.
--  * Results sorted by visit_id in descending order.
-- =====================================s

SELECT *
FROM visits
WHERE visit_id > 3 
ORDER BY visit_id DESC; 
-- LIMIT 5 
