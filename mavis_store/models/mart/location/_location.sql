{{config(materialized="table")}}

with location as (
  
  select *
  FROM {{ref("int_location")}}
)


select * from location