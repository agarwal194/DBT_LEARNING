{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(44)}}
FROM 
{{ref('LINKAGE_LVL44')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL44=B.PARENT
