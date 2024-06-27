use testdb;
create external table if not exists segment (
    id INT,
    geometry STRING,
    oneway STRING,
    lenght FLOAT,
    final_vertice_id INT,
    start_vertice_id INT
)
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE 'hdfs://namenode:8020/user/hive/warehouse/testdb.db/segment';