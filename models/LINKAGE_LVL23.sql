{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(22)}}
FROM 
{{ref('LINKAGE_LVL22')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL22=B.PARENT
