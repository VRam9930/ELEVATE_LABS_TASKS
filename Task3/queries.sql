-- Table Creation
CREATE TABLE MLSSalaries (
    club TEXT,
    last_name TEXT,
    first_name TEXT,
    position TEXT,
    base_salary REAL,
    guaranteed_compensation REAL
);

-- Sample Data Inserts
INSERT INTO MLSSalaries VALUES ('CHI', 'Armas', 'Chris', 'M', 225000.0, 225000.0);
INSERT INTO MLSSalaries VALUES ('CHI', 'Banner', 'Michael', 'M', 12900.0, 12900.0);
INSERT INTO MLSSalaries VALUES ('CHI', 'Barrett', 'Chad', 'F', 41212.5, 48712.5);

-- Query 1: Top 10 highest-paid players
SELECT first_name, last_name, guaranteed_compensation
FROM MLSSalaries
ORDER BY guaranteed_compensation DESC
LIMIT 10;

-- Query 2: Average salary by position
SELECT position, 
       AVG(base_salary) AS avg_base_salary, 
       AVG(guaranteed_compensation) AS avg_total_compensation
FROM MLSSalaries
GROUP BY position;

-- Query 3: Players earning more than $50,000
SELECT first_name, last_name, guaranteed_compensation
FROM MLSSalaries
WHERE guaranteed_compensation > 50000;

-- Query 4: Clubs with highest average guaranteed compensation
SELECT club, 
       AVG(base_salary) AS avg_base, 
       AVG(guaranteed_compensation) AS avg_total
FROM MLSSalaries
GROUP BY club
ORDER BY avg_total DESC;

-- Query 5: Subquery - players earning above average
SELECT first_name, last_name, guaranteed_compensation
FROM MLSSalaries
WHERE guaranteed_compensation > (
    SELECT AVG(guaranteed_compensation) FROM MLSSalaries
);

-- Query 6: Create a view of top earners
CREATE VIEW TopEarners AS
SELECT first_name, last_name, club, guaranteed_compensation
FROM MLSSalaries
WHERE guaranteed_compensation > 100000;
