WITH FIRST_GEN AS(SELECT ID FROM ECOLI_DATA WHERE PARENT_ID IS NULL), SECOND_GEN AS (SELECT ECOLI_DATA.ID, PARENT_ID FROM FIRST_GEN JOIN ECOLI_DATA ON FIRST_GEN.ID = ECOLI_DATA.PARENT_ID)
SELECT ECOLI_DATA.ID FROM SECOND_GEN JOIN ECOLI_DATA ON SECOND_GEN.ID = ECOLI_DATA.PARENT_ID 
