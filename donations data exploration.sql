-- Calculating total donation
SELECT SUM(donation) as Total_Donation
FROM master..donation_data
-- Total donation is 249,085

--Calculating total donation by gender
SELECT distinct (gender), SUM(donation) as Total_Male_Donation
FROM master..donation_data
group by gender
--total male doantion is 127,628 and total female donation is 121,457

--total donation and number of donations by gender
Select SUM(donation) as total_male_donation, COUNT(gender) as number_of_male_donors
from  master..donation_data
WHERE gender = 'Male'

Select SUM(donation) as total_female_donation, COUNT(gender) as number_of_female_donors
from  master..donation_data
WHERE gender = 'Female'

--The Number of male donors is = 492 and the number of female donors is = 508

-- donation by jobfield
SELECT distinct(job_field), SUM (donation) as total_donation_by_job_field, count(job_field) as number_of_donation_by_job_field
from  master..donation_data
group by job_field
order by 2 desc
--jobfield with higest total donation is HR with 93 doantions and a total of 23,060 

--total donations and number of donations above 200
SELECT  count(donation)
FROM master..donation_data
where donation > 200
-- there are 583 donation >200

--total donation and number of donations below 200
SELECT  count(donation)
FROM master..donation_data
where donation < 200
-- there are 411 donations < 200

--top 10 states that contribute the highest 
SELECT distinct(state), SUM (donation) as total_donation_by_state
from  master..donation_data
group by state
order by 2 desc
-- California has the highest donations

--Donation frequency
select distinct(donation_frequency), count(donation_frequency)
from master..donor_data
group by donation_frequency
order by 2 desc
-- Most donors donate yearly
--
--tOP 10  cars driven by highest donors
Select distinct(car), sum(donation)
from master..donor_data don
join master..donation_data dona
 on don.id = dona.id
 group by car
 order by 2 desc

