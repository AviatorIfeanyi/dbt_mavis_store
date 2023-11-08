{{config(materialized="table")}}

with transactions as (
  select id as tnx_id, customer_id, state, product,
  order_quantity, unit_cost, unit_price, 
  total_cost, revenue, 
  (revenue - total_cost) as profit

  FROM {{ref("stg_mavisStore__productSales")}}
)


select * from transactions