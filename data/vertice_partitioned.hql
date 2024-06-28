CREATE TABLE vertice_partitioned ( 
    id INT, 
    label STRING, 
    district_id INT, 
    neighborhood_id INT, 
    zone_id INT 
) 
PARTITIONED BY (district_name STRING) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/vertice';