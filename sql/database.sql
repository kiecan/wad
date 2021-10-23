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
CREATE TABLE accessibilty_options (
	id SERIAL,
	location_id varchar(255), -- Needs to link to county table
	full_access boolean, 
	partial_access boolean, 
	bathroom_hoist boolean, 
	changing_table boolean, 
	taxi_accessibility varchar(255)
)


/* Create Table for location types */
CREATE TABLE location_types (
	location_type_id SERIAL,
	location_type_name varchar(255)
)