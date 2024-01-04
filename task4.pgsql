1 часть:
1. Выбрать все заказы из стран France, Austria, Spain
SELECT *
FROM orders
WHERE country IN ('France', 'Austria', 'Spain');
2. Выбрать все заказы, отсортировать по required_date (по убыванию) и отсортировать по дате отгрузке (по возрастанию)
SELECT *
FROM orders
ORDER BY required_date DESC, ship_date ASC;
3. Выбрать минимальное кол-во  единиц товара среди тех продуктов, которых в продаже более 30 единиц.
SELECT MIN(units_in_stock) AS min_units
FROM products
WHERE units_in_stock > 30;
4. Выбрать максимальное кол-во единиц товара среди тех продуктов, которых в продаже более 30 единиц.
SELECT MAX(units_in_stock) AS max_units
FROM products
WHERE units_in_stock > 30;
5. Найти среднее значение дней уходящих на доставку с даты формирования заказа в USA
SELECT AVG(DATEDIFF(ship_date, required_date)) AS avg_delivery_days
FROM orders
WHERE country = 'USA';
6. Найти сумму, на которую имеется товаров (кол-во * цену) причём таких, которые планируется продавать и в будущем (см. на поле discontinued)
SELECT SUM(units_sold * price) AS total_value
FROM orders
JOIN products ON orders.product_id = products.product_id
WHERE discontinued = 0;

2 часть:
7. Выбрать все записи заказов в которых наименование страны отгрузки начинается с 'U'
SELECT *
FROM orders
WHERE LEFT(country, 1) = 'U';
8. Выбрать записи заказов (включить колонки идентификатора заказа, идентификатора заказчика, веса и страны отгузки), которые должны быть отгружены в страны имя которых начинается с 'N', отсортировать по весу (по убыванию) и вывести только первые 10 записей.
SELECT order_id, customer_id, weight, country
FROM orders
WHERE LEFT(country, 1) = 'N'
ORDER BY weight DESC
LIMIT 10;
9. Выбрать записи работников (включить колонки имени, фамилии, телефона, региона) в которых регион неизвестен
SELECT name, surname, phone, region
FROM employees
WHERE region IS NULL;
10. Подсчитать кол-во заказчиков регион которых известен
SELECT COUNT(DISTINCT customer_id) AS count_customers_with_region
FROM orders
WHERE region IS NOT NULL;
11. Подсчитать кол-во поставщиков в каждой из стран и отсортировать результаты группировки по убыванию кол-ва
SELECT country, COUNT(DISTINCT supplier_id) AS supplier_count
FROM suppliers
GROUP BY country
ORDER BY supplier_count DESC;
12. Подсчитать суммарный вес заказов (в которых известен регион) по странам, затем отфильтровать по суммарному весу (вывести только те записи где суммарный вес больше 2750) и отсортировать по убыванию суммарного веса.
SELECT country, SUM(weight) AS total_weight
FROM orders
WHERE region IS NOT NULL
GROUP BY country
HAVING total_weight > 2750
ORDER BY total_weight DESC;
13. Выбрать все уникальные страны заказчиков и поставщиков и отсортировать страны по возрастанию
SELECT country FROM (
  SELECT country FROM customers
  UNION
  SELECT country FROM suppliers
) AS combined_countries
ORDER BY country ASC;
14. Выбрать такие страны в которых "зарегистированы" одновременно и заказчики и поставщики и работники.
SELECT country
FROM (
  SELECT country FROM customers
  INTERSECT
  SELECT country FROM suppliers
  INTERSECT
  SELECT country FROM employees
) AS countries_with_all_types;
15. Выбрать такие страны в которых "зарегистированы" одновременно заказчики и поставщики, но при этом в них не "зарегистрированы" работники.
SELECT country
FROM (
  SELECT country FROM customers
  INTERSECT
  SELECT country FROM suppliers
) AS countries_with_customers_and_suppliers
WHERE country NOT IN (SELECT DISTINCT country FROM employees);
