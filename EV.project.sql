create database EV_project;
use EV_project
show tables;
select * from stations;
select * from vehicle;
#Total Number of Charging Stations
select count(name) as total_stations
from stations;
#Total Registered EVs
select sum(ev_vehicles) as Registered_EVs
from vehicle;
#Stations per City
select city,count(name) as station_count
from stations
group by city
order by station_count desc
limit 7;
#EVs per City
select city,ev_vehicles
from vehicle
order by ev_vehicles desc
limit 5;
#EV-to-Station Ratio (per city)
select v.city,v.ev_vehicles,
count(s.city) as station_count,
round(v.ev_vehicles/count(s.city),2) as EV_to_Station_Ratio
from stations s
left join vehicle v on s.city=v.city
group by  v.city,v.ev_vehicles
order by  EV_to_Station_Ratio desc
limit 10;
#Top 5 Cities by EV Adoption
select city,ev_vehicles
from vehicle
order by ev_vehicles desc
limit 6;
#Top 5 Cities with  Number of Stations
select city, count(*) as station_count
FROM stations
GROUP BY city;
#Percentage of Cities Without Any Station
SELECT 
ROUND((SUM(CASE WHEN s.city IS NULL THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2
    ) AS pct_cities_without_station
FROM  vehicle v
LEFT JOIN stations s
ON s.city = v.city;
#Stations per 10,000 Residents (if population data is available)
SELECT 
v.city,
COUNT(s.city) AS station_count,
v.population,
ROUND((COUNT(s.city) / v.population) * 10000, 2) AS stations_per_10k
FROM vehicle v
LEFT JOIN stations s 
ON v.city = s.city
GROUP BY v.city, v.population
ORDER BY stations_per_10k DESC;
