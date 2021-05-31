SELECT * FROM orders INNER JOIN customers on orders.customer_id = customers.id;
#siparişler ile ilgili ,siparişlerin hangi muşteriler ile ilişkili olduğunu 
#gostermek için inner join kullanılır.



SELECT orders.id,orders.order_date,customers.first_name FROM orders INNER JOIN customers on orders.customer_id = customers.id
#sadece belli alanları getirme işlemi



# kısaltmalar kullanabiliriz.

select o.id,c.first_name,c.last_name,o.order_date from orders o INNER JOIN customers c
on o.customer_id = c.id

//Takma Sütün ismi İle Getirme Ve isim soyisim birleştirme

select o.id,CONCAT(c.last_name,c.first_name) customerName,o.order_date from orders o INNER JOIN customers c
on o.customer_id = c.id

//filtreleme yapma

#sadece new york'tan gelen siparişler 
select o.id,CONCAT(c.last_name,c.first_name) customerName,o.order_date from orders o INNER JOIN customers c
on o.customer_id = c.id where c.city = 'New York'

select o.id,CONCAT(c.last_name,c.first_name) customerName,o.order_date from orders o INNER JOIN customers c
on o.customer_id = c.id ORDER BY customerName