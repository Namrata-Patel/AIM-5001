SELECT  pg_terminate_backend (pg_stat_activity.pid) FROM  pg_stat_activity WHERE  pg_stat_activity.datname = 'wde_data';
            -- Create Database
            DROP DATABASE IF EXISTS wde_data;
            CREATE DATABASE wde_data;

\c wde_data;
-- Create the 'country_master' table
DROP TABLE IF EXISTS country_master CASCADE;
CREATE TABLE country_master (
	id serial PRIMARY KEY,
    code varchar(10) NOT NULL,
    name varchar(255) NOT NULL
);


-- Create the 'series_master' table
DROP TABLE IF EXISTS series_master CASCADE;
CREATE TABLE series_master (
	id serial PRIMARY KEY,
	code varchar(50) NOT NULL, 
    name varchar(255) NOT NULL
);

DROP TABLE IF EXISTS energy_data;
CREATE TABLE energy_data (
    id serial PRIMARY KEY, -- Primary key with auto-incrementing identity
    country_id int REFERENCES country_master(id),
    series_id int REFERENCES series_master(id),
    year_1990 varchar(255),
    year_1991 varchar(255),
    year_1992 varchar(255),
    year_1993 varchar(255),
    year_1994 varchar(255),
    year_1995 varchar(255),
    year_1996 varchar(255),
    year_1997 varchar(255),
    year_1998 varchar(255),
    year_1999 varchar(255),
    year_2000 varchar(255),
    year_2001 varchar(255),
    year_2002 varchar(255),
    year_2003 varchar(255),
    year_2007 varchar(255),
    year_2008 varchar(255),
    year_2009 varchar(255),
    year_2010 varchar(255),
    year_2011 varchar(255),
    year_2012 varchar(255),
    year_2013 varchar(255),
    year_2014 varchar(255),
    year_2015 varchar(255),
    year_2016 varchar(255),
    year_2017 varchar(255),
    year_2018 varchar(255),
    year_2019 varchar(255),
    year_2020 varchar(255),
    year_2021 varchar(255),
    year_2022 varchar(255)
);