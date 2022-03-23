{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(3)}}
FROM 
{{ref('LINKAGE_LVL2')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL2=B.PARENT