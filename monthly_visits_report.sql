DROP TABLE IF EXISTS visits;

CREATE TABLE IF NOT EXISTS visits (
    visit_id INT PRIMARY KEY,
    visit_date DATE NOT NULL,
    billed_amount NUMERIC(10, 2) NOT NULL
);

INSERT INTO visits (visit_id, visit_date, billed_amount)
VALUES
    (1, '2026-10-03', 85.00),
    (2, '2026-10-17', 120.50),
    (3, '2026-11-02', 95.00),
    (4, '2026-11-15', 150.00);

SELECT
    DATE_TRUNC('month', visit_date)::date AS visit_month,
    COUNT(*) AS visit_count,
    SUM(billed_amount) AS total_billed
FROM visits
GROUP BY visit_month
ORDER BY visit_month;