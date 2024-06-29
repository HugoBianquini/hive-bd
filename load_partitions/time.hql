set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.max.dynamic.partitions=10000;
set hive.exec.max.dynamic.partitions.pernode=10000;

INSERT INTO TABLE time_partitioned PARTITION (year, month)
SELECT 
    id,
    period,
    day,
    weekday,
    year,
    month
FROM 
    time;
