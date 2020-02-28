SELECT p_name, c_name FROM products p
left join
(SELECT * from categories c 
 LEFT JOIN product_has_category pc 
 on c.idcategory = pc.category_id) a
 on p.idproduct = a.product_id;