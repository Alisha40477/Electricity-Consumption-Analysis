-- ============================================
-- Electricity Consumption Analysis
-- Database: MySQL
-- ============================================

-- Create Database
CREATE DATABASE electricity;

-- Use Database
USE electricity;

-- ============================================
-- Total Records
-- ============================================
SELECT COUNT(*) AS Total_Records
FROM consumption;

-- ============================================
-- Total Electricity Usage
-- ============================================
SELECT SUM(`Usage`) AS Total_Usage
FROM consumption;

-- ============================================
-- Average Electricity Usage
-- ============================================
SELECT AVG(`Usage`) AS Average_Usage
FROM consumption;

-- ============================================
-- Maximum Electricity Usage
-- ============================================
SELECT MAX(`Usage`) AS Maximum_Usage
FROM consumption;

-- ============================================
-- Minimum Electricity Usage
-- ============================================
SELECT MIN(`Usage`) AS Minimum_Usage
FROM consumption;

-- ============================================
-- Top 10 Electricity Consuming States
-- ============================================
SELECT States,
       SUM(`Usage`) AS Total_Usage
FROM consumption
GROUP BY States
ORDER BY Total_Usage DESC
LIMIT 10;

-- ============================================
-- Region-wise Electricity Usage
-- ============================================
SELECT Regions,
       SUM(`Usage`) AS Total_Usage
FROM consumption
GROUP BY Regions;

-- ============================================
-- Number of Records in Each Region
-- ============================================
SELECT Regions,
       COUNT(*) AS Total_Records
FROM consumption
GROUP BY Regions;

-- ============================================
-- Highest Electricity Usage Record
-- ============================================
SELECT *
FROM consumption
ORDER BY `Usage` DESC
LIMIT 1;

-- ============================================
-- Lowest Electricity Usage Record
-- ============================================
SELECT *
FROM consumption
ORDER BY `Usage` ASC
LIMIT 1;

-- ============================================
-- Year-wise Electricity Usage
-- ============================================
SELECT YEAR(STR_TO_DATE(Dates,'%d/%m/%Y')) AS Year,
       SUM(`Usage`) AS Total_Usage
FROM consumption
GROUP BY Year;

-- ============================================
-- Month-wise Electricity Usage
-- ============================================
SELECT MONTH(STR_TO_DATE(Dates,'%d/%m/%Y')) AS Month,
       SUM(`Usage`) AS Total_Usage
FROM consumption
GROUP BY Month
ORDER BY Month;

-- ============================================
-- State-wise Average Electricity Usage
-- ============================================
SELECT States,
       AVG(`Usage`) AS Average_Usage
FROM consumption
GROUP BY States
ORDER BY Average_Usage DESC
LIMIT 10;

-- ============================================
-- Region-wise Average Electricity Usage
-- ============================================
SELECT Regions,
       AVG(`Usage`) AS Average_Usage
FROM consumption
GROUP BY Regions;

-- ============================================
-- Display First 10 Records
-- ============================================
SELECT *
FROM consumption
LIMIT 10;