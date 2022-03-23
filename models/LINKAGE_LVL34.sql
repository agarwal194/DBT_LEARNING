{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(33)}}
FROM 
{{ref('LINKAGE_LVL33')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL33=B.PARENT
