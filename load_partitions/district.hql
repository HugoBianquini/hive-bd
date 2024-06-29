set hive.exec.dynamic.partition.mode=nonstrict;
INSERT INTO TABLE district_partitioned PARTITION (name)
SELECT 
    id,
    geometry,
    name
FROM 
    district;