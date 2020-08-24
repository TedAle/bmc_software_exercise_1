Insert into ATEDESCHI.CATALOG (WINE_ID,SHOW,DISCOUNT,ID,ADDED) values ('0','Y','0','0',to_date('23-AUG-20','DD-MON-RR'));
Insert into ATEDESCHI.CATALOG (WINE_ID,SHOW,DISCOUNT,ID,ADDED) values ('1','Y','50','1',to_date('23-AUG-20','DD-MON-RR'));
Insert into ATEDESCHI.CATALOG (WINE_ID,SHOW,DISCOUNT,ID,ADDED) values ('2','N','0','2',to_date('24-AUG-20','DD-MON-RR'));


Insert into ATEDESCHI.CUSTOMER (ID,USERNAME,PASSWORD,FIRSTNAME,LASTNAME,EMAIL,DOB,SHIPPING_ADDRESS_ID,PHONE,DATE_JOINING) values ('0','alessiotedeschi','password','Alessio','Tedeschi','alessiotedeschi@hotmail.it',to_date('13-MAY-88','DD-MON-RR'),'0','+393454050805',to_date('22-AUG-20','DD-MON-RR'));


Insert into ATEDESCHI.SHIPPING_ADDRESS (ID,STREET,CITY,REGION,NATION,PROVINCE,CAP) values ('0','VIA GORIZIA, 12','MILANO','LOMBARDIA','ITALIA','MI','20093');


Insert into ATEDESCHI.WINE (ID,NAME,DESCRIPTION,ABV,KIND,BRAND,ORIGIN,YEAR,PRICE,CURRENCY) values ('1','Toscana','Vino rosso, secco. Prodotto in Italia','12,5','RED','TOSCANA','ITALIA','2020','10','EUR');
Insert into ATEDESCHI.WINE (ID,NAME,DESCRIPTION,ABV,KIND,BRAND,ORIGIN,YEAR,PRICE,CURRENCY) values ('0','Soave Classico','From the historic Soave Classico zone, which lies between the quaint medieval town of Soave and Monteforte d''''Alpione...','11,5','WHITE','SOAVE','ITALIA','2018','150,05','EUR');
Insert into ATEDESCHI.WINE (ID,NAME,DESCRIPTION,ABV,KIND,BRAND,ORIGIN,YEAR,PRICE,CURRENCY) values ('2','NO','NO','0','NO','NO','NO','0','0','EUR');


Insert into ATEDESCHI.WINE_ORDER (WINE_ID,AMOUNT,PRICE_CAD,TOTAL,CURRENCY,DATE_OF_ORDER,CUSTOMER_ID) values ('0','10','10,5','105','EUR',to_date('22-AUG-20','DD-MON-RR'),'0');
