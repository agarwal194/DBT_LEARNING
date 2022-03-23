{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(36)}}
FROM 
{{ref('LINKAGE_LVL36')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL36=B.PARENT
