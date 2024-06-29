set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions=10000;
set hive.exec.max.dynamic.partitions.pernode=10000;

INSERT OVERWRITE TABLE crime_partitioned PARTITION (year, month)
SELECT 
    c.id,
    c.total_feminicide,
    c.total_homicide,
    c.total_felony_murder,
    c.total_bodily_harm,
    c.total_theft_cellphone,
    c.total_armed_robbery_cellphone,
    c.total_theft_auto,
    c.total_armed_robbery_auto,
    c.segment_id,
    t.id,
    t.year,
    t.month
FROM 
    crime c
JOIN 
    time t 
ON 
    c.time_id = t.id
WHERE 
    t.year IS NOT NULL AND t.month IS NOT NULL;
