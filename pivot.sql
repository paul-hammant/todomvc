CREATE TABLE html (framework,loc);
INSERT INTO html
  SELECT framework, code as loc 
  FROM stats 
  WHERE language == 'HTML'; 

CREATE TABLE nonhtml (framework,loc);
INSERT INTO nonhtml
  SELECT framework, sum(code) as loc 
  FROM stats 
  WHERE language <> 'HTML' 
  GROUP BY framework;
  

INSERT INTO nonhtml values ("HardCoded", 0);  
  
CREATE TABLE pivoted (framework, html, nonhtml);  
INSERT INTO pivoted  
SELECT html.framework, html.loc, nonhtml.loc  
FROM html, nonhtml 
WHERE html.framework == nonhtml.framework 
ORDER BY nonhtml.loc;

SELECT * FROM pivoted;

