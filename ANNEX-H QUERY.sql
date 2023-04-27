SELECT
STG.DOC_STATUS_DESC AS STATUS,PRM.REMARKS,PRM.HS_CODE,PRM.ITEM_DESC, PRM.MEASUREMENT_CODE AS UNITS_OF_MEASUREMENT,
GDTYPE.DESCRIPTION AS ITEM_TYPE,VATR.RATE_DESC AS Sales_Tax_Rate,PRM.OPENING_VALUE AS OPENING_BALANCE_1,
PRM.PURCHASE_VALUE_PERIOD AS Purchased_Imported_during_the_month,PRM.SALE_VALUE_DS_PERIOD,
PRM.SALE_VALUE_DZE_PERIOD,PRM.SALE_VALUE_EXP_PERIOD,PRM.CLOSING_VALUE,PRM.OPENING_QUANTITY AS OPENING_BALANCE_2,
PRM.PURCHASE_QUANTITY_PERIOD,PRM.SALE_QUANTITY_DS_PERIOD,PRM.SALE_QUANTITY_DZE_PERIOD,PRM.SALE_QUANTITY_EXP_PERIOD,
PRM.CLOSING_QUANTITY AS CLOSING_VALUE,PRM.OPENING_INPUTTAX AS OPENING_BALANCE_3,PRM.PURCHASE_INPUTTAX_PERIOD,
PRM.SALE_INPUTTAX_DS_PERIOD,PRM.SALE_INPUTTAX_DZE_PERIOD,PRM.SALE_INPUTTAX_EXP_PERIOD,PRM.CLOSING_INPUTTAX AS CLOSING_VALUE_2
FROM IRIS_STRV.FORM_PRM_DETAILS PRM
FULL JOIN IRIS_STRV.DOCUMENT_STATUS STG
ON PRM.CASE_STATUS_CODE = STG.DOC_STATUS
FULL JOIN IRIS_STRV.SA_VAT_RATE_CODE VATR
ON VATR.RATE_ID = PRM.RATE_ID
FULL JOIN IRIS_STRV.SA_CUSTOM_GD_TYPES GDTYPE
ON GDTYPE.GD_TYPE_ID = PRM.ITEM_TYPE;





SELECT * FROM IRIS_STRV.SA_CUSTOM_GD_TYPES;
SELECT * FROM IRIS_STRV.FORM_PRM_DETAILS;
SELECT * FROM IRIS_STRV.DOCUMENT_STATUS;
SELECT * FROM IRIS_STRV.SA_VAT_RATE_CODE;