CREATE TABLE UTIL.CUR_EXCH_RATE_HISTORY
(
ID NUMBER NOT NULL ENABLE,
CURR_ID NUMBER,
CURR_TEXT VARCHAR2(20),
RATE NUMBER,
CURR_CODE VARCHAR2(3),
CURR_TYPE VARCHAR2(10) CHECK (CURR_TYPE IN ('MONEY','CRYPTO','PRE_METAL')),
EXCHANGEDATE DATE DEFAULT TRUNC(SYSDATE,'dd'),
CHANGE_USER VARCHAR2(100) DEFAULT USER,
CHANGE_DATE DATE DEFAULT SYSDATE
);

COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.ID IS 'Унікальний ідентифікатор.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.CURR_ID IS 'Ідентифікатор курсу валют.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.CURR_TEXT IS 'Tекстовий формат курсу валют.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.RATE IS 'Курс валют.Ненулевий стовпець.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.CURR_CODE IS 'Код курсу валют.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.CURR_TYPE IS 'Тип курсу валют.Пишемо в значенні "MONEY","CRYPTO","PRE_METAL".';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.EXCHANGEDATE IS 'Дата обміну курсу валют.За замовчуванням повернення дати.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.CHANGE_USER IS 'Змінити користувача.За замовчуванням користувач.';
COMMENT ON COLUMN UTIL.CUR_EXCH_RATE_HISTORY.CHANGE_DATE IS 'Дата зміни курсу валют.За замовчуванням системна дата.';
