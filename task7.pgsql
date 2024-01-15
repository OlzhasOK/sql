-- CREATE FUNCTION count_products(company_name VARCHAR) RETURNS SMALLINT AS $$

--     SELECT COUNT(products.units_in_stock)

--     FROM products

--     JOIN suppliers ON products.supplier_id = suppliers.supplier_id

--     WHERE suppliers.company_name = count_products.company_name;

-- $$ LANGUAGE SQL;
-- SELECT count_products('New Orleans Cajun Delights')


-- CREATE OR REPLACE FUNCTION get_orders_by_period(start_date DATE, end_date DATE)
-- RETURNS TABLE (
--     order_id INTEGER,
--     customer_id INTEGER,
--     order_date DATE
-- ) AS $$
-- BEGIN
--     RETURN QUERY
--     SELECT
--         order_id,
--         customer_id,
--         order_date
--     FROM
--         orders
--     WHERE
--         order_date BETWEEN start_date AND end_date;
-- END;
-- $$ LANGUAGE plpgsql;

-- SELECT * FROM get_orders_by_period('2022-01-01'::DATE, '2022-01-31'::DATE);

-- CREATE OR REPLACE FUNCTION get_employee_info(employee_name VARCHAR)
-- RETURNS TABLE (
--     employee_id INTEGER,
--     first_name VARCHAR,
--     last_name VARCHAR,
--     birth_date DATE,
-- ) AS $$
-- BEGIN
--     RETURN QUERY
--     SELECT
--         e.employee_id,
--         e.first_name,
--         e.last_name,
--         e.hire_date,
--     FROM
--         employees e
--     WHERE
--         e.first_name || ' ' || e.last_name = employee_name;
-- END;
-- $$ LANGUAGE plpgsql;


-- SELECT * FROM get_employee_info('John');

-- CREATE OR REPLACE FUNCTION update_employee_name(employee_id INTEGER, new_name VARCHAR)
-- RETURNS VOID AS $$
-- BEGIN
--     UPDATE employees
--     SET first_name = split_part(new_name, ' ', 1),
--         last_name = split_part(new_name, ' ', 2)
--     WHERE employee_id = update_employee_name.employee_id;
-- END;
-- $$ LANGUAGE plpgsql;

-- -- Обновляем имя сотрудника с employee_id = 1 на новое имя 'Новое Имя'
-- SELECT update_employee_name(1, 'Новое Имя');
