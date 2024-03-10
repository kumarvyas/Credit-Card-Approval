select * from credit;

-- 1. Group the customers bassed on their income type and find the average of their annual income.
select type_income,avg(annual_income) as average_income from credit group by type_income;

-- 2. Find the female owners of cars and property
select * from credit where gender="F" and car_owner="Y" and property_owner="Y";

-- 3. Find the male customers who are staying with their family
select * from credit where gender='M' and Family_Members>0;

-- 4. Please list the top 5 people having the highest income
select * from credit order by Annual_Income desc limit 5;

-- 5. How many married people are having bad credit
select count(*) as Bad_Credit from credit where marital_status="Married" and label=1;

-- 6. What is the highest education level and what is the total count 
select Education,count(*) as total_count from credit group by Education order by total_count desc limit 1;

-- 7. Between married males and females, who is having more bad credit
select gender,count(*) as total from credit where marital_status="Married" and label=1 group by gender order by total desc limit 2;


