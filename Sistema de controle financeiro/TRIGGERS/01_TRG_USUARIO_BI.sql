--------------------------------------------------------
--  Arquivo criado - terça-feira-dezembro-02-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger TRG_USUARIO_BI
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "CF_USER"."TRG_USUARIO_BI" 
BEFORE INSERT ON USUARIO
FOR EACH ROW
BEGIN
    IF :NEW.id_usuario IS NULL THEN
        SELECT seq_usuario.NEXTVAL INTO :NEW.id_usuario FROM dual;
    END IF;
END;

/
ALTER TRIGGER "CF_USER"."TRG_USUARIO_BI" ENABLE;
