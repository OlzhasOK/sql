-- 1. Найти заказчиков, не сделавших ни одного заказа. Вывести имя заказчика и order_id.

-- 2. Переписать предыдущий запрос, использовав симметричный вид джойна (подсказка: речь о LEFT и RIGHT)
SELECT Customers.contact_name, Orders.order_id
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
WHERE Orders.employee_id IS NULL;



SELECT Customers.contact_name, Orders.order_id
FROM Customers
LEFT JOIN Orders ON Customers.customer_id = Orders.customer_id
WHERE Orders.freight IS NULL;

SELECT Customers.contact_name, Orders.order_id
FROM Orders
RIGHT JOIN Customers ON Orders.customer_id = Customers.customer_id
WHERE Orders.order_id IS NULL;
