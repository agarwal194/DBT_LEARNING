{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(21)}}
FROM 
{{ref('LINKAGE_LVL21')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL21=B.PARENT
