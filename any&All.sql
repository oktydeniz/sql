select products.id,products.product_name,products.list_price from products
WHERE products.id in (2,3,5,10)
 -- (id= 2) or (id=2) or (id=5) or (id=10) any operatörüde aynı mantıkla çalışan bir yapı 
 

select products.id,products.product_name,products.list_price from products
WHERE products.id = ANY (2,3,5,10)

 -- Yukarıdaki gibi yazılmaz tabiki 
select products.id,products.product_name,products.list_price from products
WHERE products.id = any (SELECT order_details.product_id from order_details WHERE order_details.quantity>10)

 -- sadece = değil matematiksel tüm operatörler de kullanılabilir.

SELECT * from customers 
WHERE customers.salary <any (SELECT AVG(customers.salary) form customers)


SELECT * from customers 
WHERE customers.age > any (SELECT customers.age FROM customers WHERE customers.salary>5000)

 -- ******ALL 

select products.id,products.product_name,products.list_price from products
WHERE products.id > ALL (SELECT order_details.product_id from order_details WHERE order_details.quantity>10)
#yukarıda product id'si gelen sorgudan küçük olanları gösterdik sadece kullnım amacı için yapıldı yoksa mantıklı bir sorgu değil