use testdb;
CREATE TABLE segment_partitioned ( 
    id INT, 
    geometry STRING, 
    length FLOAT, 
    final_vertice_id INT, 
    start_vertice_id INT 
) 
PARTITIONED BY (oneway STRING) 
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';' 
STORED AS TEXTFILE;