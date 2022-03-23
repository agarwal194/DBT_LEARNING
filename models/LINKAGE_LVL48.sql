{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(47)}}
FROM 
{{ref('LINKAGE_LVL47')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL47=B.PARENT
