SELECT
GDI.IS_FIXED_ASSET AS Fixed_Assets,GDI.IS_INADMISSIBLE,SACT.DESCRIPTION AS Collectorate,
GDTYPE.CODE AS GD_TYPE,GDI.GD_NO AS GD_Number,GDI.GD_DATE,GDI.HS_CODE,SACT.TYPE,
GDI.IMP_QUANTITY AS GUANTITY,GDI.IMP_VALUE AS  Sales_Taxable_of_Imports,
GDI.IMP_TAX AS Sales_Tax_Paid_at_Import_Stage,GDI.IMP_FED AS FED_Paid_at_Import_Stage,
GDI.CASH_NO AS Cash_Number,GDI.CASH_DATE
FROM IRIS_STRV.FORM_GDI_DETAILS GDI
FULL JOIN IRIS_STRV.SA_CUSTOM_COLLECTORATES SACT
ON GDI.COLLECTORATE_ID = SACT.COLLECT_ID
FULL JOIN IRIS_STRV.SA_CUSTOM_GD_TYPES GDTYPE
ON GDTYPE.GD_TYPE_ID = GDI.GD_TYPE;


SELECT * FROM IRIS_STRV.FORM_GDI_DETAILS; --ANNEX-B IMPORT DATA
SELECT * FROM IRIS_STRV.SA_CUSTOM_GD_TYPES; --GD TYPES DATA
SELECT * FROM IRIS_STRV.sa_custom_collectorates;-- COLLECTORATES DATA
SELECT * FROM IRIS_STRV.FORM_EXPORT_DETAILS;-- ANNEX-D EXPORT DATA



