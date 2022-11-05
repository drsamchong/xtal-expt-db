USE CRYSTN_EXPTS;

# get the hazards for a chemical based on name
SET @CHEMICAL_NAME := '1,4-diiodobenzene';
SELECT h.HZD_CODE, h.HZD_STATEMENT
FROM
SAFETY s JOIN HAZARDS h
ON
s.HZD_ID = h.HZD_ID
WHERE s.MOL_ID =
	(SELECT m.MOL_ID
     FROM
     MOLECULES m
     WHERE
     lower(m.MOL_NAME) = lower(@CHEMICAL_NAME));


# get the hazards for a chemical based on name (with name)
SELECT m.MOL_NAME, h.HZD_CODE, h.HZD_STATEMENT
FROM MOLECULES m
JOIN
SAFETY s
ON
m.MOL_ID = s.MOL_ID
INNER JOIN
HAZARDS h
ON
s.HZD_ID = h.HZD_ID
WHERE lower(m.MOL_NAME) = lower(@CHEMICAL_NAME);

# GROUP BY - get average successful expts by researchers with different experience levels
# HAVING - limit this to compare postgrad taught (MSc) and undergrad students

SELECT 
e.RESEARCHER_ID,
r.R_FIRSTNAME,
r.R_STATUS,
AVG(e.SUCCESS) as Success_rate
FROM EXPERIMENTS e
JOIN RESEARCHERS r
ON e.RESEARCHER_ID = r.RESEARCHER_ID
GROUP BY r.R_STATUS, r.R_FIRSTNAME, e.RESEARCHER_ID
HAVING (r.R_STATUS) in ('Y3 UG', 'Y4 UG', 'PGT')
ORDER BY r.R_STATUS;



