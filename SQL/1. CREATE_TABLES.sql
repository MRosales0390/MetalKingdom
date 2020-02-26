/*****************************************************/
/********************BY MARCO ROSALES*****************/
/*****************************************************/
DECLARE nCount  NUMBER;
        v_sql   LONG;
BEGIN
    SELECT  COUNT(1) 
      INTO  nCount 
      FROM  DBA_TABLES 
     WHERE  TABLE_NAME  = 'PRUEBA';
     
     IF(nCount <= 0) THEN     
         v_sql  := 'CREATE TABLE PRUEBA(
                        nombre  VARCHAR2(50))';

        EXECUTE IMMEDIATE v_sql;
    END IF;
END;