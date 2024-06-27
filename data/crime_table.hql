create database if not exists testdb;
use testdb;
create external table if not exists crime (
    id STRING,
    total_feminicide STRING,
    total_homicide STRING,
    total_felony_murder STRING,
    total_bodily_harm STRING,
    total_theft_cellphone STRING,
    total_armed_robbery_cellphone STRING,
    total_theft_auto STRING,
    total_armed_robbery_auto STRING,
    segment_id STRING,
    time_id STRING
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/crime';