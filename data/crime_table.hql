create database if not exists testdb;
use testdb;
create external table if not exists crime (
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
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/crime';