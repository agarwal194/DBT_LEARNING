{{ config(materialized='table', sort='PARENT,CHILD') }}

SELECT 
{{column_list(-1)}}
FROM 
PUBLIC.LINK_HIER B
WHERE
B.HAVE_PARENT=0