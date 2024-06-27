SELECT
    s.name AS segment_name,
    SUM(c.total_feminicide) AS total_feminicide,
    SUM(c.total_homicide) AS total_homicide,
    SUM(c.total_felony_murder) AS total_felony_murder,
    SUM(c.total_bodily_harm) AS total_bodily_harm,
    SUM(c.total_theft_cellphone) AS total_theft_cellphone,
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_theft_auto) AS total_theft_auto,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM
    crime c
JOIN
    segment s ON c.segment_id = s.id
JOIN
    district d ON s.district_id = d.id
JOIN
    time t ON c.time_id = t.id
WHERE
    d.name = 'IGUATEMI'
    AND t.year = '2016'
GROUP BY
    s.name;