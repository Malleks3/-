-- Запрос для входа в аккаунт  
 SELECT u.user_id, u.first_name, u.last_name, r.role AS role
 FROM user u
 JOIN role r ON r.role_id = u.role_id
 WHERE u.login = ? AND u.password = ?;

-- запрос каталога товаров

 SELECT p.tovar_id, p.articul, p.product_name_id, p.unit_of_measurement, p.price, p.Current_discount, p.Quantity_in_stock,
  p.description, p.photo,
  c.category_id AS category, m.manufacturer_id AS manufacturer, s.supplier_id AS supplier
 FROM tovar p
JOIN category c ON c.category_id = p.category_id
JOIN manufacterer m ON m.manufacturer_id = p.manufacturer_id
JOIN supplier s ON s.supplier_id = p.supplier_id
--  Запрос на поиск, фильтр и сортировку
WHERE p.product_name_id LIKE CONCAT ('%?%') AND p.supplier_id = 1
ORDER BY p.Quantity_in_stock DESC;

-- запросы для добавления и редактирования
-- справочники для выпадающих списков в форме
SELECT category_id, category FROM category;
SELECT manufacturer_id, manufacturer FROM manufacterer;
SELECT supplier_id, supplier FROM suppliers;

-- добавление товара

INSERT INTO tovar
 (articul, product_name_id, unit_of_measurement, price, Current_discount, Quantity_in_stock, description, photo, category_id,
manufacturer_id, supplier_id)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

-- открыть товар для редактирования — заполнить все поля сразу

SELECT * FROM tovar WHERE tovar_id = ?;

-- сохранить изменения

UPDATE tovar
SET articul=?, product_name_id =?, unit_of_measurement=?, price=?, Current_discount=?, Quantity_in_stock=?, description=?, photo=?,
 category_id=?, manufacturer_id=?, supplier_id=?
WHERE tovar_id = ?;
-- защита от удаления купленного товара
SELECT COUNT(*) AS used_in_orders FROM proorders WHERE tovar_id = 1;
DELETE FROM tovar WHERE tovar_id = 1;

