{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(5)}}
FROM 
{{ref('LINKAGE_LVL5')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL5=B.PARENT