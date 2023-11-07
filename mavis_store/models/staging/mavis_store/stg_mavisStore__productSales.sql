
WITH data_source AS(
  SELECT * FROM {{ source('mavis_store_sales', 'product_sales') }}
)


SELECT Date as date, Customer_ID as customer_id, 
  Customer_Age as customer_age, Customer_Gender as customer_gender,
  Country as country, State as state, Product_Category as product_category,
  Sub_Category as sub_category, Product as product, 
  Order_Quantity as order_quantity, Unit_Cost as unit_cost, 
  Unit_Price as unit_price, Cost as cost
FROM {{ source('mavis_store_sales', 'product_sales') }}