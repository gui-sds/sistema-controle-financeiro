--------------------------------------------------------
--  Arquivo criado - terça-feira-dezembro-02-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRG_GASTO_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CF_USER"."TRG_GASTO_BI" 
BEFORE INSERT ON GASTO
FOR EACH ROW
BEGIN
    IF :NEW.id_gasto IS NULL THEN
        SELECT seq_gasto.NEXTVAL INTO :NEW.id_gasto FROM dual;
    END IF;
END;

/
ALTER TRIGGER "CF_USER"."TRG_GASTO_BI" ENABLE;
