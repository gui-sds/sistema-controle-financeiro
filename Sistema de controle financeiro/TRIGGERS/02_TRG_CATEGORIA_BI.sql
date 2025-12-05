--------------------------------------------------------
--  Arquivo criado - terça-feira-dezembro-02-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRG_CATEGORIA_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CF_USER"."TRG_CATEGORIA_BI" 
BEFORE INSERT ON CATEGORIA
FOR EACH ROW
BEGIN
    IF :NEW.id_categoria IS NULL THEN
        SELECT seq_categoria.NEXTVAL INTO :NEW.id_categoria FROM dual;
    END IF;
END;

/
ALTER TRIGGER "CF_USER"."TRG_CATEGORIA_BI" ENABLE;
