
SELECT
DST.DOC_STATUS_DESC AS STATUS,DD.BUYER_REG_NO,DD.BUYER_NAME,VATAX.TAXPAYER_DESC AS BUYER_TYPE,REGVER.VERICIATION_STATUS AS Buyer_Verification_Status,
DD.SELLER_REG_NO,DD.SELLER_NAME,WF.PERIOD_START_DATE AS TAX_PERIOD,STATE.STATE_PROVINCE_DESC AS Sale_Origination_Province,STATE.STATE_PROVINCE_DESC AS Destination_Province,
DOC.DOC_TYPE_DESC AS INVOICE_TYPE,DD.DOC_NO AS INVOICE_NO,DD.DOC_DATE AS INVOICE_DATE,DD.HS_CODE,VAT.RATE_DESC AS RATE, 
UM.DESCRIPTION AS UOM,SI.QUANTITY,SI.SALE_VALUE,VATTR.TRANSACTION_DESC AS SALE_TYPE,SI.VAT_WITHHELD AS ST_withheld_at_Source,SI.EXTRA_TAX,
SI.FURTHER_TAX,SI.TOTAL_VALUEOFSALES,SRO.SRO_DESC AS SRO_SCHEDULE_NO,DD.SRO_ITEM_ID as Item_Sr_No
FROM IRIS_STRV.DOMESTIC_DOCUMENTS DD
FULL JOIN IRIS_STRV.FORM_SALE_INVOICES SI
ON DD.DDOC_ID = SI.DDOC_ID
FULL JOIN IRIS_STRV.SA_VAT_RATE_CODE VAT
ON VAT.RATE_ID = SI.RATE_ID
JOIN IRIS_STRV.DOCUMENT_STATUS DST
ON DD.CASE_STATUS_CODE = DST.DOC_STATUS
FULL JOIN IRIS_STRV.SA_DOC_TYPES DOC
ON DD.DOC_TYPE_ID = DOC.DOC_TYPE_ID 
FULL JOIN IRIS_STRV.SA_VAT_TRANSACTION_TYPE_CODE VATT
ON VATT.TRANSACTION_TYPE_ID = SI.TRANSACTION_TYPE_ID
FULL JOIN IRIS_STRV.SA_VAT_UOM UM
ON  UM.UOM_ID = VAT.UOM_ID
FULL JOIN iris_strv.st_types STYPE
ON STYPE.TRANS_TYPE_ID = SI.TRANSACTION_TYPE_ID 
FULL JOIN iris_strv.SA_VAT_TAXPAYER_TYPE_CODE VATAX
ON DD.BUYER_TYPE_ID = VATAX.TAXPAYER_TYPE_ID
FULL JOIN IRIS_STRV.SA_STATES_PROVINCES STATE
ON STATE.STATE_PROVINCE_CODE = DD.BUYER_PROVINCE_ID
FULL JOIN IRIS_STRV.SA_REG_VERIFICATION_STATUS REGVER
ON REGVER.VERIFICATION_ID = DD.BUYER_TRUST_STATUS
FULL JOIN IRIS_STRV.SA_VAT_TRANSACTION_TYPE_CODE VATTR
ON VATTR.TRANSACTION_TYPE_ID = DD.TRANSACTION_TYPE_ID
JOIN IRIS_STRV.SA_VAT_SRO_CODE SRO
ON SRO.SRO_ID = DD.SRO_ID
FULL JOIN IRIS_NEW.WORKFLOW WF
ON DD.FORM_ID_SALE = WF.TRANSACTION_ID
where DD.SELLER_REG_NO ='5510256922889';




SELECT * FROM IRIS_STRV.FORM_SALE_INVOICES;
SELECT * FROM IRIS_STRV.SA_VAT_SRO_CODE;
SELECT * FROM IRIS_STRV.FORM_PURCHASE_INVOICES;
SELECT * FROM IRIS_STRV.SA_VAT_TRANSACTION_TYPE_CODE;
SELECT * FROM IRIS_STRV.SA_REG_VERIFICATION_STATUS;
SELECT * FROM IRIS_STRV.SA_STATES_PROVINCES;
select * from iris_strv.SA_VAT_TAXPAYER_TYPE_CODE;
SELECT * FROM IRIS_STRV.DOMESTIC_DOCUMENTS;
SELECT * FROM IRIS_STRV.SA_VAT_RATE_CODE;
SELECT * FROM IRIS_STRV.SA_DOC_TYPES;
SELECT * FROM IRIS_STRV.DOCUMENT_STATUS;
SELECT * FROM IRIS_STRV.SA_VAT_UOM;
SELECT * FROM IRIS_STRV.SA_VAT_SRO_ITEM_CODE;
SELECT * FROM IRIS_STRV.SA_VAT_HSCODES;
SELECT * FROM IRIS_STRV.SA_VAT_HSCODE_SERVICES;
SELECT * FROM IRIS_STRV.SA_VAT_ITEM_DESC_CODE;
SELECT * FROM IRIS_STRV.DOCUMENT_STAGES;
SELECT * FROM IRIS_NEW.WORKFLOW;
