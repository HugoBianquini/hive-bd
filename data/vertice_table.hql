use testdb;
create external table if not exists vertice (
    id INT,
    label STRING,
    district_id INT,
    neighborhood_id INT,
    zone_id INT
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/vertice';