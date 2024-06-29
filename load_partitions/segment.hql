set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions=10000;
set hive.exec.max.dynamic.partitions.pernode=10000;

INSERT INTO TABLE segment_partitioned PARTITION (oneway)
SELECT 
    id,
    geometry,
    lenght,
    final_vertice_id,
    start_vertice_id,
    oneway
FROM 
    segment;
