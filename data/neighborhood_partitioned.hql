CREATE TABLE neighborhood_partitioned ( 
    id INT, 
    geometry STRING 
) PARTITIONED BY (name STRING) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE location 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/neighborhood';