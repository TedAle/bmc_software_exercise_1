
--------------------------------------------------------
--  File created - Monday-August-24-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CUSTOMERID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ATEDESCHI"."CUSTOMERID_SEQ"  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Sequence SHIPPING_ADDRESSID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "ATEDESCHI"."SHIPPING_ADDRESSID_SEQ"  MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE   ;
--------------------------------------------------------
--  DDL for Table CATALOG
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."CATALOG" 
   (	"WINE_ID" NUMBER(12,0), 
	"SHOW" CHAR(1 BYTE), 
	"DISCOUNT" NUMBER(5,2) DEFAULT 0, 
	"ID" NUMBER(12,0), 
	"ADDED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ATEDESCHI"."CATALOG"."SHOW" IS 'Y = YES, N = NO';
   COMMENT ON COLUMN "ATEDESCHI"."CATALOG"."DISCOUNT" IS 'In percentage';
   COMMENT ON COLUMN "ATEDESCHI"."CATALOG"."ADDED" IS 'Date since in catalog';
--------------------------------------------------------
--  DDL for Table CUSTOMER
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."CUSTOMER" 
   (	"ID" NUMBER(12,0), 
	"USERNAME" VARCHAR2(45 BYTE), 
	"PASSWORD" VARCHAR2(256 BYTE), 
	"FIRSTNAME" VARCHAR2(60 BYTE), 
	"LASTNAME" VARCHAR2(60 BYTE), 
	"EMAIL" VARCHAR2(125 BYTE), 
	"DOB" DATE, 
	"SHIPPING_ADDRESS_ID" NUMBER(12,0), 
	"PHONE" VARCHAR2(45 BYTE), 
	"DATE_JOINING" DATE DEFAULT CURRENT_DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ROLE
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."ROLE" 
   (	"ID" NUMBER(12,0), 
	"CATALOG" VARCHAR2(3 BYTE) DEFAULT 'NON', 
	"WAREHOUSE" VARCHAR2(3 BYTE) DEFAULT 'NON', 
	"WINE_ORDER" VARCHAR2(3 BYTE) DEFAULT 'NON'
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "ATEDESCHI"."ROLE"."CATALOG" IS 'ADM = ADMIN, NON = NONE';
   COMMENT ON COLUMN "ATEDESCHI"."ROLE"."WAREHOUSE" IS 'ADM = ADMIN, NON = NONE';
   COMMENT ON COLUMN "ATEDESCHI"."ROLE"."WINE_ORDER" IS 'ADM = ADMIN, NON = NONE';
--------------------------------------------------------
--  DDL for Table SHIPPING_ADDRESS
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."SHIPPING_ADDRESS" 
   (	"ID" NUMBER(12,0), 
	"STREET" VARCHAR2(120 BYTE), 
	"CITY" VARCHAR2(120 BYTE), 
	"REGION" VARCHAR2(120 BYTE), 
	"NATION" VARCHAR2(120 BYTE), 
	"PROVINCE" VARCHAR2(120 BYTE), 
	"CAP" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SPECIAL_USER
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."SPECIAL_USER" 
   (	"ID" NUMBER(12,0), 
	"USERNAME" VARCHAR2(45 BYTE), 
	"PASSWORD" VARCHAR2(45 BYTE), 
	"ROLE_ID" NUMBER(12,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WAREHOUSE
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."WAREHOUSE" 
   (	"WINE_ID" NUMBER(12,0), 
	"AMOUNT" NUMBER(10,0), 
	"LAST_UPDATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table WINE
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."WINE" 
   (	"ID" NUMBER(12,0), 
	"NAME" VARCHAR2(45 BYTE), 
	"DESCRIPTION" VARCHAR2(256 BYTE), 
	"ABV" NUMBER(5,2), 
	"KIND" VARCHAR2(20 BYTE), 
	"BRAND" VARCHAR2(256 BYTE), 
	"ORIGIN" VARCHAR2(256 BYTE), 
	"YEAR" NUMBER(4,0), 
	"PRICE" NUMBER(10,2), 
	"IMAGE_DATA_URI" CLOB, 
	"CURRENCY" VARCHAR2(3 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
 LOB ("IMAGE_DATA_URI") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "ATEDESCHI"."WINE"."ABV" IS 'Alcool by volume';
   COMMENT ON COLUMN "ATEDESCHI"."WINE"."CURRENCY" IS 'EUR,USD,GBP';
--------------------------------------------------------
--  DDL for Table WINE_ORDER
--------------------------------------------------------

  CREATE TABLE "ATEDESCHI"."WINE_ORDER" 
   (	"WINE_ID" NUMBER(12,0), 
	"AMOUNT" NUMBER(10,0), 
	"PRICE_CAD" NUMBER(10,2), 
	"TOTAL" NUMBER(20,2), 
	"CURRENCY" CHAR(3 BYTE), 
	"DATE_OF_ORDER" DATE DEFAULT CURRENT_DATE, 
	"CUSTOMER_ID" NUMBER(12,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

--------------------------------------------------------
--  DDL for Index CATALOG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."CATALOG_PK" ON "ATEDESCHI"."CATALOG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CUSTOMER_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."CUSTOMER_UK1" ON "ATEDESCHI"."CUSTOMER" ("USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."ROLE_PK" ON "ATEDESCHI"."ROLE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SHIPPING_ADDRESS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."SHIPPING_ADDRESS_PK" ON "ATEDESCHI"."SHIPPING_ADDRESS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SPECIAL_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."SPECIAL_USER_PK" ON "ATEDESCHI"."SPECIAL_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_IL0000370951C00010$$
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."SYS_IL0000370951C00010$$" ON "ATEDESCHI"."WINE" (
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" 
  PARALLEL (DEGREE 0 INSTANCES 0) ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."TABLE1_PK" ON "ATEDESCHI"."CUSTOMER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WAREHOUSE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."WAREHOUSE_PK" ON "ATEDESCHI"."WAREHOUSE" ("WINE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WINE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ATEDESCHI"."WINE_PK" ON "ATEDESCHI"."WINE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CATALOG
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."CATALOG" MODIFY ("DISCOUNT" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CATALOG" MODIFY ("SHOW" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CATALOG" MODIFY ("WINE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CATALOG" MODIFY ("ADDED" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CATALOG" ADD CONSTRAINT "CATALOG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."CATALOG" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."CUSTOMER" ADD CONSTRAINT "AGE_OVER_18_CONSTRAINT" CHECK (floor(MONTHS_BETWEEN(DATE_JOINING, DOB)/12)>=18) ENABLE;
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("DATE_JOINING" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_UK1" UNIQUE ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."CUSTOMER" ADD CONSTRAINT "CUSTOMER_PK" PRIMARY KEY ("ID")
  USING INDEX (CREATE UNIQUE INDEX "ATEDESCHI"."TABLE1_PK" ON "ATEDESCHI"."CUSTOMER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" )  ENABLE;
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("PHONE" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("SHIPPING_ADDRESS_ID" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("DOB" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("LASTNAME" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("FIRSTNAME" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."CUSTOMER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROLE
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."ROLE" ADD CONSTRAINT "ROLE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."ROLE" MODIFY ("WINE_ORDER" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."ROLE" MODIFY ("WAREHOUSE" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."ROLE" MODIFY ("CATALOG" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."ROLE" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SHIPPING_ADDRESS
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("PROVINCE" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("REGION" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("CAP" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" ADD CONSTRAINT "SHIPPING_ADDRESS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("NATION" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("CITY" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("STREET" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SHIPPING_ADDRESS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table SPECIAL_USER
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."SPECIAL_USER" ADD CONSTRAINT "SPECIAL_USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."SPECIAL_USER" MODIFY ("ROLE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SPECIAL_USER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SPECIAL_USER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."SPECIAL_USER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."WAREHOUSE" ADD CONSTRAINT "WAREHOUSE_PK" PRIMARY KEY ("WINE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."WAREHOUSE" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WAREHOUSE" MODIFY ("WINE_ID" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WAREHOUSE" MODIFY ("LAST_UPDATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WINE
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("PRICE" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" ADD CONSTRAINT "WINE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("YEAR" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("ORIGIN" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("BRAND" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("KIND" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("ABV" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("DESCRIPTION" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("CURRENCY" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE" MODIFY ("IMAGE_DATA_URI" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WINE_ORDER
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("CUSTOMER_ID" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" ADD CONSTRAINT "TOTAL_CHK" CHECK (TOTAL = (PRICE_CAD*AMOUNT)) ENABLE;
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("DATE_OF_ORDER" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("CURRENCY" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("TOTAL" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("PRICE_CAD" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("AMOUNT" NOT NULL ENABLE);
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" MODIFY ("WINE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CATALOG
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."CATALOG" ADD CONSTRAINT "CATALOG_FK1" FOREIGN KEY ("WINE_ID")
	  REFERENCES "ATEDESCHI"."WINE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CUSTOMER
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."CUSTOMER" ADD CONSTRAINT "SHIPPING_ADDRESS_FK1" FOREIGN KEY ("SHIPPING_ADDRESS_ID")
	  REFERENCES "ATEDESCHI"."SHIPPING_ADDRESS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table SPECIAL_USER
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."SPECIAL_USER" ADD CONSTRAINT "SPECIAL_USER_FK1" FOREIGN KEY ("ROLE_ID")
	  REFERENCES "ATEDESCHI"."ROLE" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WAREHOUSE
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."WAREHOUSE" ADD CONSTRAINT "WAREHOUSE_FK1" FOREIGN KEY ("WINE_ID")
	  REFERENCES "ATEDESCHI"."WINE" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WINE_ORDER
--------------------------------------------------------

  ALTER TABLE "ATEDESCHI"."WINE_ORDER" ADD CONSTRAINT "WINE_ORDER_FK1" FOREIGN KEY ("WINE_ID")
	  REFERENCES "ATEDESCHI"."WINE" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "ATEDESCHI"."WINE_ORDER" ADD CONSTRAINT "WINE_ORDER_FK2" FOREIGN KEY ("CUSTOMER_ID")
	  REFERENCES "ATEDESCHI"."CUSTOMER" ("ID") ENABLE;
	  