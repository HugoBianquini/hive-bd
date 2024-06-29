set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions=10000;
set hive.exec.max.dynamic.partitions.pernode=10000;

INSERT INTO TABLE vertice_partitioned PARTITION (name)
SELECT 
    v.id,
    v.label,
    v.district_id,
    v.neighborhood_id,
    v.zone_id,
    d.name
FROM 
    vertice v
JOIN 
    district d 
ON 
    v.district_id = d.id;
