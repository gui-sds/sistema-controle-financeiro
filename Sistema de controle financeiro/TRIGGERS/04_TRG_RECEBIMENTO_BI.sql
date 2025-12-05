--------------------------------------------------------
--  Arquivo criado - terça-feira-dezembro-02-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRG_RECEBIMENTO_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CF_USER"."TRG_RECEBIMENTO_BI" 
BEFORE INSERT ON recebimento
FOR EACH ROW
BEGIN
    IF :NEW.id_recebimento IS NULL THEN
        SELECT seq_recebimento.NEXTVAL INTO :NEW.id_recebimento FROM dual;
    END IF;
END;

/
ALTER TRIGGER "CF_USER"."TRG_RECEBIMENTO_BI" ENABLE;
