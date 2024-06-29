use testdb;
CREATE TABLE crime_partitioned (
    id INT,
    total_feminicide INT,
    total_homicide INT,
    total_felony_murder INT,
    total_bodily_harm INT,
    total_theft_cellphone INT,
    total_armed_robbery_cellphone INT,
    total_theft_auto INT,
    total_armed_robbery_auto INT,
    segment_id INT,
    time_id INT
)
PARTITIONED BY (year INT, month INT)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE;