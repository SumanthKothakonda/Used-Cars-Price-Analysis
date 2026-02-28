/* SQL ANALYSIS */

/*TOTAL CARS */
SELECT COUNT(car_name) AS TOTAL_CARS
FROM cars_24_all_cities

/*AVG PRICE */
SELECT ROUND(AVG(price),2) AS AVG_PRICE 
FROM cars_24_all_cities

/*HIGHEST CAR PRICE */
SELECT MAX(price) AS HIGHEST_PRICE 
FROM cars_24_all_cities

/*LOWEST CAR PRICE */
SELECT MIN(price) AS LOWEST_PRICE 
FROM cars_24_all_cities

/*TOTAL BRAND */
SELECT COUNT(DISTINCT brand) AS TOTAL_BRANDS
FROM cars_24_all_cities

/*NEWEST MODEL YEAR*/
SELECT MAX(year_of_manufacture) AS NEWEST_MODEL_YEAR
FROM cars_24_all_cities

/*OLDEST MODEL YEAR*/
SELECT MIN(year_of_manufacture) AS OLDEST_MODEL_YEAR
FROM cars_24_all_cities

/*TOTAL BRANDS LISTINGS */
SELECT brand as BRAND,COUNT(*) AS TOTAL_LISTINGS
FROM cars_24_all_cities
GROUP BY brand
ORDER BY TOTAL_LISTINGS DESC;

/*AVERAGE PRICE BY BRAND */
SELECT brand AS BRAND,ROUND(AVG(price), 2) AS AVG_PRICE
FROM cars_24_all_cities
GROUP BY brand
ORDER BY AVG_PRICE DESC;

/*CITY WISE CARS COUNT*/
select city AS CITY, COUNT(car_name) AS NO_OF_CARS 
FROM cars_24_all_cities
GROUP BY city
ORDER BY NO_OF_CARS DESC

/*CITY WISE CARS PRICE COMPARISION*/
SELECT city AS CITY,ROUND(AVG(price), 2) AS AVG_PRICE
FROM cars_24_all_cities
GROUP BY city
ORDER BY AVG_PRICE DESC;

/*CAR AGE vs CAR PRICE */
SELECT car_age_years AS CAR_AGE_YEARS,ROUND(AVG(price), 2) AS AVG_PRICE
FROM cars_24_all_cities
GROUP BY car_age_years
ORDER BY car_age_years;

/*KM DRIVEN VS PRICE */
SELECT KMS_RANGE,ROUND(AVG(price), 2) AS AVG_PRICE,MIN(price) AS MIN_PRICE,MAX(price) AS MAX_PRICE
FROM (SELECT
        CASE
            WHEN kms_driven BETWEEN 0 AND 20000 THEN '0-20k'
            WHEN kms_driven BETWEEN 20001 AND 40000 THEN '20k-40k'
            WHEN kms_driven BETWEEN 40001 AND 60000 THEN '40k-60k'
            WHEN kms_driven BETWEEN 60001 AND 80000 THEN '60k-80k'
            WHEN kms_driven BETWEEN 80001 AND 100000 THEN '80k-100k'
            ELSE '100k+'
        END AS KMS_RANGE,price FROM cars_24_all_cities) A
GROUP BY KMS_RANGE
ORDER BY KMS_RANGE

/* TRANSMISSION TYPE VS PRICING  AND COUNT */
SELECT transmission_type AS TRANSMISSION_TYPE ,COUNT(car_name)AS CARS, ROUND(AVG(price),2) AS AVG_PRICE 
FROM cars_24_all_cities
GROUP BY TRANSMISSION_TYPE

/* FUEL TYPE DEMAND AND PRICING */
SELECT fuel_type AS FUEL_TYPE ,COUNT(car_name)AS CARS, ROUND(AVG(price),2) AS AVG_PRICE 
FROM cars_24_all_cities
GROUP BY FUEL_TYPE

/* EMI AFFORDABILTY */
SELECT EMI,COUNT(car_name) AS CARS
FROM (SELECT
        CASE
            WHEN emi < 8000 THEN 'Low EMI(<8K)'
            WHEN emi BETWEEN 8000 AND 15000 THEN 'Mid EMI(8K-15K)'
            ELSE 'High EMI(15K+)'
        END AS EMI,car_name
    FROM cars_24_all_cities
) A
GROUP BY EMI

/* BEST VALUE CARS */
SELECT brand AS BRAND,car_name AS CAR_NAME,city AS CITY,price AS PRICE,
car_age_years AS CAR_AGE_YEARS,kms_driven AS KMS_DRVEN,emi AS EMI
FROM cars_24_all_cities 
WHERE car_age_years <= 5 AND 
kms_driven <= 60000 AND 
price BETWEEN 400000 AND 700000 AND 
fuel_type IN ('CNG' , 'Petrol') AND
emi BETWEEN 8000 AND 15000
ORDER BY price ASC






    



