{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(15)}}
FROM 
{{ref('LINKAGE_LVL15')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL15=B.PARENT
