{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(10)}}
FROM 
{{ref('LINKAGE_LVL10')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL10=B.PARENT
