-- 25 closest approaches.  Looks like all may havebeen impacts?
SELECT DISTINCT n.*, c.dist_min 
  FROM neo AS n
  JOIN cad_history AS c
    ON n.pdes = c.des
 ORDER BY c.dist_min ASC
 LIMIT 25;

 -- 25 closest future possible impacts
 SELECT DISTINCT n.*, c.dist_min 
  FROM neo AS n
  JOIN cad AS c
    ON n.pdes = c.des
 ORDER BY c.dist_min ASC
 LIMIT 25;

 -- Historic astroids that have average velocity of 30 km/s or greater
SELECT DISTINCT * FROM neo
 WHERE pdes IN(SELECT des FROM cad_history_stats WHERE avg_v_rel >= 30);

  -- current astroids with average velocity of 30 km/s or greater
SELECT DISTINCT * FROM neo
 WHERE pdes IN(SELECT des FROM cad_stats WHERE avg_v_rel >= 30);

 -- all astroids that have historical and future data
 SELECT DISTINCT * 
   FROM neo
  WHERE pdes IN (SELECT cad.des 
                   FROM cad_stats AS cad 
	               JOIN cad_history_stats AS cadh
	                 ON cad.des = cadh.des);

-- PHA of yes that were observed in 2020, 2021, or 2022
SELECT DISTINCT * 
  FROM neo
 WHERE SUBSTRING(CAST(last_obs AS VARCHAR), 1, 4) IN('2020', '2021', '2022')
 AND pha = 'Y';

-- Future potentially hazerdous astroids
	   
SELECT DISTINCT * 
  FROM neo
 WHERE pdes IN(SELECT des FROM cad_stats)
 AND pha = 'Y';

 -- astroids that will be closer than distance to earth than moon
 SELECT DISTINCT * 
   FROM neo 
  WHERE pdes IN(SELECT des 
			      FROM cad
			     WHERE dist_min < 0.003);