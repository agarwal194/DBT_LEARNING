{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(38)}}
FROM 
{{ref('LINKAGE_LVL38')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL38=B.PARENT
