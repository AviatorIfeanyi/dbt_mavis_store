{{config(materialized="table")}}

with location as (
  select *
  FROM {{ref("int_date")}}
)


select * from location