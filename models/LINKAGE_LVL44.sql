{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(43)}}
FROM 
{{ref('LINKAGE_LVL43')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL43=B.PARENT
