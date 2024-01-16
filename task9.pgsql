-- SELECT 
--   product_name, 
--   units_in_stock
-- FROM 
--   products p
-- WHERE 
--   units_in_stock < (
--     SELECT 
--       MIN(avg_units)
--     FROM (
--       SELECT 
--         product_id,
--         AVG(units_in_stock) AS avg_units
--       FROM 
--         products
--       GROUP BY 
--         product_id
--     ) AS subquery
--   );


-- SELECT * FROM products

-- SELECT DISTINCT product_name
-- FROM products
-- WHERE product_name IN (
--   SELECT product_name
--   FROM products
--   WHERE units_on_order = 10
-- );
