{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(34)}}
FROM 
{{ref('LINKAGE_LVL34')}} A
INNER JOIN
PUBLIC.LINK_HIER B
ON
A.LVL34=B.PARENT
