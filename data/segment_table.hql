use testdb;
create external table if not exists segment (
    id STRING,
    geometry STRING,
    oneway STRING,
    lenght STRING,
    final_vertice_id STRING,
    start_vertice_id STRING
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/segment';