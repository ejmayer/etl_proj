-- Create Two Tables
CREATE TABLE airbnb (
  id INT PRIMARY KEY,
  name TEXT,
  borough_name TEXT
);

CREATE TABLE nyc_crime (
  id INT PRIMARY KEY,
  type_offense TEXT,
  borough_name TEXT
);

-- rename both tables id columns
ALTER TABLE airbnb 
RENAME COLUMN id TO airbnb_id;

ALTER TABLE nyc_crime 
RENAME COLUMN id TO complaint_id;

-- join both tables on borough name
SELECT nyc_crime.complaint_id, nyc_crime.type_offense, airbnb.name, airbnb.airbnb_id, nyc_crime.borough_name
FROM airbnb
INNER JOIN nyc_crime ON
airbnb.borough_name = nyc_crime.borough_name;


select * from airbnb;

select * from nyc_crime;



DELETE from airbnb;
DELETE from nyc_crime;