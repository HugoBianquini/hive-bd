use testdb;
create external table if not exists vertice (
    id STRING,
    label STRING,
    district_id STRING,
    neighborhood_id STRING,
    zone_id STRING
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/vertice';