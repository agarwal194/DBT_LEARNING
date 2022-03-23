{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(45)}}
FROM 
{{ref('LINKAGE_LVL45')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL45=B.PARENT
