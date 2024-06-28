use testdb;
create external table if not exists time (
    id INT,
    period STRING,
    day INT,
    month INT,
    year INT,
    weekday STRING
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/time';