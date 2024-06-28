-- Questão 1

SELECT 
    s.id AS segment_id,
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
    vertice v_start ON s.start_vertice_id = v_start.id
JOIN 
    vertice v_end ON s.final_vertice_id = v_end.id
JOIN 
    district d_start ON v_start.district_id = d_start.id
JOIN 
    district d_end ON v_end.district_id = d_end.id
JOIN 
    time t ON c.time_id = t.id
WHERE 
    (d_start.name = 'IGUATEMI' OR d_end.name = 'IGUATEMI')
    AND t.year = 2016
GROUP BY 
    s.id;

-- Questão 2

SELECT 
    s.id AS segment_id,
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
    vertice v_start ON s.start_vertice_id = v_start.id
JOIN 
    vertice v_end ON s.final_vertice_id = v_end.id
JOIN 
    district d_start ON v_start.district_id = d_start.id
JOIN 
    district d_end ON v_end.district_id = d_end.id
JOIN 
    time t ON c.time_id = t.id
WHERE 
    (d_start.name = 'IGUATEMI' OR d_end.name = 'IGUATEMI')
    AND t.year BETWEEN 2006 AND 2016
GROUP BY 
    s.id;

-- Questão 3

set hive.strict.checks.cartesian.product=false;
set hive.mapred.mode=false;

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    crime c
JOIN 
    segment s ON c.segment_id = s.id
JOIN 
    vertice v_start ON s.start_vertice_id = v_start.id
JOIN 
    vertice v_end ON s.final_vertice_id = v_end.id
JOIN 
    neighborhood n ON (v_start.neighborhood_id = n.id OR v_end.neighborhood_id = n.id)
JOIN 
    time t ON c.time_id = t.id
WHERE 
    n.name = 'SANTA EFIGENIA'
  AND t.year = 2015;

-- Questão 4

SELECT 
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
    time t ON c.time_id = t.id
WHERE 
    (s.oneway = 'yes' OR s.oneway = 'oneway')
    AND t.year = 2012;

-- Questã0 5

SELECT 
    SUM(c.total_armed_robbery_cellphone) AS total_armed_robbery_cellphone,
    SUM(c.total_armed_robbery_auto) AS total_armed_robbery_auto
FROM 
    crime c
JOIN 
    time t ON c.time_id = t.id
WHERE 
    t.year = 2017;

-- Questão 6

SELECT 
    s.id AS segment_id,
    SUM(c.total_feminicide + c.total_homicide + c.total_felony_murder + c.total_bodily_harm + c.total_theft_cellphone + c.total_armed_robbery_cellphone + c.total_theft_auto + c.
total_armed_robbery_auto) AS total_crimes
FROM 
    crime c
JOIN 
    segment s ON c.segment_id = s.id
JOIN 
    time t ON c.time_id = t.id
WHERE 
    t.year = 2010
    AND t.month = 11
GROUP BY 
    s.id
ORDER BY 
    total_crimes DESC
LIMIT 10;

-- Questão 7

SELECT 
    s.id AS segment_id,
    SUM(c.total_feminicide + c.total_homicide + c.total_felony_murder + c.total_bodily_harm + c.total_theft_cellphone + c.total_armed_robbery_cellphone + c.total_theft_auto + c.total_armed_robbery_auto) AS total_crimes
FROM 
    crime c
JOIN 
    segment s ON c.segment_id = s.id
JOIN 
    time t ON c.time_id = t.id
WHERE 
    t.year = 2018
    AND t.weekday IN ('saturday', 'sunday')
GROUP BY 
    s.id
ORDER BY 
    total_crimes DESC
LIMIT 10;
