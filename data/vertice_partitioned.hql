use testdb;
CREATE TABLE vertice_partitioned ( 
    id INT, 
    label STRING, 
    district_id INT, 
    neighborhood_id INT, 
    zone_id INT 
) 
PARTITIONED BY (name STRING) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE;