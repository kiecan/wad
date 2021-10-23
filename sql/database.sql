-- Database: wad

-- DROP DATABASE IF EXISTS wad;

CREATE DATABASE wad
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE wad
    IS 'Main database for Wheelchair Access Dashboard';

/* Create Table to store location data */
CREATE TABLE locations (
    location_id SERIAL,
    location_name varchar(255),
    county varchar(255), -- Needs to link to county table
	location_type varchar(255), -- Needs to link to location_type table
    eircode varchar(255),
    phone varchar(255),
	website varchar(255),
	address varchar(255),
	google_map_url varchar(255)
);

/* Create Table to list counties in Ireland*/
CREATE TABLE counties (
	county_id SERIAL, 
	county_name varchar(255)
);


/* Create Table with accessibility options  */
CREATE TABLE accessibilty (
	location_id varchar(255) -- Needs to link to county table
)

CREATE TABLE location_types (
	location_type_id SERIAL,
	location_type_name varchar(255)
)