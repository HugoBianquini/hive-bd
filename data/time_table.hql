use testdb;
create external table if not exists time (
    id STRING,
    period STRING,
    day STRING,
    month STRING,
    year STRING,
    weekday STRING
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/time';