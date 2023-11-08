{{config(materialized="table")}}

with location as (
  
  select DISTINCT state, country

  FROM {{ref("stg_mavisStore__productSales")}}
)


select * from location