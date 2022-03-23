{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(1)}}
FROM 
{{ref('LINKAGE_LVL0')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL0=B.PARENT