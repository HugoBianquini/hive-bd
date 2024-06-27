use testdb;
create external table if not exists neighborhood (
    id STRING,
    name STRING,
    geometry STRING
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/neighborhood';