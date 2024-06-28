CREATE TABLE time_partitioned ( 
    id INT, 
    period STRING, 
    day INT
) 
PARTITIONED BY (year INT, month INT, weekday STRING) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/time';