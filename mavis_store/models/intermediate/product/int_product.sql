{{config(materialized="table")}}

with product as (
  
  select DISTINCT product, product_category, sub_category

  FROM {{ref("stg_mavisStore__productSales")}}
)


select * from product