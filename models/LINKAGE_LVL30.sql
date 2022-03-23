{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(29)}}
FROM 
{{ref('LINKAGE_LVL29')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL29=B.PARENT
