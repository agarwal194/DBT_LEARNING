{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(18)}}
FROM 
{{ref('LINKAGE_LVL18')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL18=B.PARENT
