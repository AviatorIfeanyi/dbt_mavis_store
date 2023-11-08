
WITH data_source AS(
  SELECT * FROM {{ source('mavis_store_sales', 'product_sales') }}
)


SELECT ROW_NUMBER() OVER() AS id, Date as date::DATE, Customer_ID as customer_id, 
  Customer_Age as customer_age, Customer_Gender as customer_gender,
  Country as country, State as state, Product as product, 
  Product_Category as product_category, Sub_Category as sub_category,  
  Order_Quantity as order_quantity, Unit_Cost as unit_cost, 
  Unit_Price as unit_price, 
  (order_quantity * unit_cost) as total_cost,
  (order_quantity * unit_price) as revenue

FROM data_source