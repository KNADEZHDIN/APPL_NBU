CREATE TABLE UTIL.CURR_TYPE
(
ID        NUMBER NOT NULL ENABLE,
CURR_CODE VARCHAR2(4),
CURR_TYPE VARCHAR2(10) CHECK (CURR_TYPE IN ('MONEY','CRYPTO','PRE_METAL')) ENABLE,
CONSTRAINT CURR_TYPE_ID_PK PRIMARY KEY (ID)
);

COMMENT ON TABLE UTIL.CURR_TYPE IS 'Довідкова таблиця валют. Усі значення з CURR_CODE, будуть використані у мезанізмі збагачення валюти';
COMMENT ON COLUMN UTIL.CURR_TYPE.ID IS 'Унікальний ідентифікатор.';
COMMENT ON COLUMN UTIL.CURR_TYPE.CURR_CODE IS 'Код курсу валют.';
COMMENT ON COLUMN UTIL.CURR_TYPE.CURR_TYPE IS 'Тип курсу валют. Пишемо в значенні "MONEY","CRYPTO","PRE_METAL".';
