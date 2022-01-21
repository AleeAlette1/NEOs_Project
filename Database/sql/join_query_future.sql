SELECT DISTINCT neo.*, cadh.orbit_id AS orbit_id_cad, cadh.jd, cadh.cd, cadh.dist, cadh.dist_min, cadh.dist_max, cadh.v_rel, cadh.v_inf, cadh.t_sigma_f, cadh.h AS h_cad
 FROM neo
 JOIN (SELECT *
   		 FROM cad
   		WHERE des IN(SELECT l1.des
       	 			       FROM (SELECT des, MAX(cd)
          		 			         FROM cad
           					        GROUP BY des) AS l1)
    	  AND cd IN(SELECT l2.recent
          			    FROM (SELECT des, MAX(cd) AS recent
          					        FROM cad
           				         GROUP BY des) AS l2)) AS cadh
   ON (cadh.des = neo.pdes);
