{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(13)}}
FROM 
{{ref('LINKAGE_LVL13')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL13=B.PARENT
