INSERT INTO [aspElectricPro].[dbo].[ProAccountsArc]
(
[DATE_BEGIN], 
[CONTRACT_ID], 
[ACCOUNT_ID], 
[ACCOUNT_NAME], 
[ADDRESS], 
[AUDIT_TYPE_ID], 
[AUDIT_PARAM_ID], 
[AUDIT_METHOD_ID], 
[POWER_GROUP_ID], 
[BURNING_GROUP_ID], 

[USE_HOUR], 
[CALC_FACTOR], 
[LEGAL_DEVIATION], 
[ACCOUNT_OWNER_ID], 
[TARIFF_ID], 
[STREET_ID], 
[HOUSE_ID], 
[FLAT_ID], 
[SUBSTAION_TYPE_ID], 
[TRANSFORMER_SUBSTAION_ID], 

[TRANSFORMER_SECTION_ID], 
[KNOT_MAIN], 
[KNOT_OUT], 
[SUBSTATION_TYPE_ID], 
[SUBSTATION_ID], 
[SECTION_ID], 
[INDEX_F24_ID], 
[CAPACITY], 
[NODEID], 
[TRANC_POWER_ID], 

[TRANC_POWER_ACCOUNT_ID], 
[TRANC_POWER_METHOD_ID], 
[TRANC_POWER_CHANGE_DATE]
)

SELECT
'2004-09-30',
[CONTRACT_ID], 
[ACCOUNT_ID], 
[ACCOUNT_NAME], 
[ADDRESS], 
[AUDIT_TYPE_ID], 
[AUDIT_PARAM_ID], 
[AUDIT_METHOD_ID], 
[POWER_GROUP_ID], 
[BURNING_GROUP_ID], 

[USE_HOUR], 
[CALC_FACTOR], 
[LEGAL_DEVIATION], 
[ACCOUNT_OWNER_ID], 
[TARIFF_ID], 
[STREET_ID], 
[HOUSE_ID], 
[FLAT_ID], 
null,
null,

null,
[KNOT_MAIN], 
[KNOT_OUT], 
[SUBSTATION_TYPE_ID], 
[SUBSTATION_ID], 
[SECTION_ID], 
[INDEX_F24_ID], 
[CAPACITY], 
[NODEID], 
[TRANC_POWER_ID], 

[TRANC_POWER_ACCOUNT_ID], 
[TRANC_POWER_METHOD_ID], 
[TRANC_POWER_CHANGE_DATE] 

FROM [aspElectricPro].[dbo].[ProAccounts]
where account_id = 500330106
