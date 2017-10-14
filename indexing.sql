\c virginiasouza

DROP DATABASE IF EXISTS indexed_cars;

DROP USER IF EXISTS indexed_cars_user;


CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars OWNER indexed_cars_user;

\c indexed_cars;

\i scripts/car_models.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;

\timing

-- without duplicate rows , use 'distinct' keyword
SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- timing = 26.697 ms
-- timing = 1.459 ms

-- shift g to jump to end of list
-- gg to jump to top of list
-- space bar to jump one page at a time

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- timing = 20.400 ms

SELECT make_code , model_code , model_title , year
FROM car_models
WHERE make_code = 'LAM';
-- timing = 20.563 ms

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;
-- timing = 65.012 ms

SELECT *
FROM car_models
WHERE year = 2010;
-- timing = 34.341 ms

CREATE INDEX ON car_models(make_code);

CREATE INDEX ON car_models(year);

SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
-- timing = 26.697 ms
-- NOW timing = 1.150 ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- timing = 20.400 ms
-- NOW timing = 1.643 ms

SELECT make_code , model_code , model_title , year
FROM car_models
WHERE make_code = 'LAM';
-- timing = 20.563 ms
-- NOW timing = 1.073 ms

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;
-- timing = 65.012 ms
-- NOW timing = 54.042 ms

SELECT *
FROM car_models
WHERE year = 2010;
-- timing = 34.341 ms
-- NOW timing = 11.507 ms






