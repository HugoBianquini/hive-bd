set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions=10000;
set hive.exec.max.dynamic.partitions.pernode=10000;

INSERT INTO TABLE neighborhood_partitioned PARTITION (name)
SELECT 
    id,
    geometry,
    name
FROM 
    neighborhood;
