with customer as (
  select distinct customer_id as id, customer_age as age,
  case when 
    customer_gender = "M" then "MALE" ELSE "FEMALE" 
  END as gender
  FROM {{ref("stg_mavisStore__productSales")}}
)


select * from customer