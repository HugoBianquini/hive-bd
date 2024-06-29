use testdb;
CREATE TABLE time_partitioned ( 
    id INT, 
    period STRING, 
    day INT,
    weekday STRING
) 
PARTITIONED BY (year INT, month INT) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE;