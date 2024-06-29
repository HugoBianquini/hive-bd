use testdb;
CREATE TABLE neighborhood_partitioned ( 
    id INT, 
    geometry STRING 
) PARTITIONED BY (name STRING) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE;