{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(39)}}
FROM 
{{ref('LINKAGE_LVL39')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL39=B.PARENT
