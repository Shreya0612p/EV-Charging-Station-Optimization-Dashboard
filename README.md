# EV-Charging-Station-Optimization-Dashboard
Purpose

This interactive Power BI dashboard provides a complete analysis of EV adoption and charging station availability across Indian cities.
It helps policymakers, businesses, and urban planners uncover:

Gaps in charging infrastructure

Cities with high EV adoption but fewer stations

Overall distribution of EVs vs. stations

It empowers decision-makers to take data-driven actions for improving EV infrastructure planning.

Tech Stack

Power BI Desktop – For dashboard design and data visualization

Power Query – For data cleaning and transformation

DAX (Data Analysis Expressions) – For calculated KPIs like EV-to-Station Ratio

SQL (MySQL / SQLite / PostgreSQL) – For querying and preprocessing raw data before importing

File Formats – .pbix (Power BI file), .png (Dashboard screenshot), .csv (datasets)

Data Source

EV Charging Station Data – OpenChargeMap API, Kaggle datasets

City EV & Population Data – Government open data, transport reports, Kaggle

Fields Included:

Charging Stations: station_id, station_name, city, state, latitude, longitude

City Data: city, state, population, total_vehicles, ev_vehicles

Business Problem

EV adoption is rising rapidly, but charging infrastructure is not evenly distributed.
Cities with high EV numbers often lack enough stations, leading to range anxiety and slower adoption.

Stakeholders must understand:

Which cities have the highest EV demand

Where charging infrastructure is insufficient

How many additional stations are needed

Dashboard Goals

Answer key business questions:

Which cities have the most EVs?

Which cities have the most charging stations?

Which cities are underserved (high EV-to-station ratio)?

What percentage of cities lack charging stations? (In this dataset: 0%)

How many new stations are required to balance demand?

Walkthrough of Key Visuals

Main KPIs

Total EVs: 4,137,414

Total Charging Stations: 1,547

Cities Covered: 82

Cities Without Stations: 0%

Average EVs per Station: 2,674

EV Adoption Trends

Top 5 Cities by EV Count: Delhi, Gurgaon, Hyderabad, Bengaluru, Karadagodu

Top 5 Cities by Number of Stations: Gurugram, Behror, Khatauli, Karnal, Kasauli

Gap Analysis

Underserved cities like Karadagodu, Kanpur, Panvel have very high EV-to-station ratios (80,000+ EVs per station).

Even though every city has at least one station, the distribution is uneven.

Best-Served Cities

Delhi, Gurgaon, and Hyderabad show stronger coverage compared to EV numbers.

Underserved Cities

Karadagodu, Kanpur, and Panvel face extreme pressure on single stations.

Business Impact

Infrastructure Planning – Build more stations in underserved, high-EV cities
Resource Allocation – Prioritize Tier-2 and Tier-3 cities with rising EV adoption
EV Adoption – Reduce range anxiety by improving accessibility
