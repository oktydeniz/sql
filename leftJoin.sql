select customers.first_name,orders.id as orderId from customers 
inner join orders on orders.customer_id = customers.id

#Bu senaryoda biz sitemize üye olmuş herkesi getireceğiz ve bu üyelerin hangileri sipariş vermiş hangleri vermemiş onları kontrol edeceğiz.
#customer tablosunda olan ama orders tablosunda olmayan kayıtları alacağız join yaptığın tablonun sol tarafındaki tüm kayıtlar gelir
//from customers LEFT join orders (left table-> customer, right table-> orders) böylece siparişi olanlar ve olmayanlar gelir olmayanlar null değeri atanır.


select customers.first_name,orders.id as orderId from customers 
LEFT join orders on orders.customer_id = customers.id

select customers.first_name,orders.id as orderId from customers 
LEFT join orders on orders.customer_id = customers.id
ORDER BY customers.first_name //sıralama ile getir.





#sadece null olanlar gelsin 
select customers.first_name,orders.id as orderId from customers 
LEFT join orders on orders.customer_id = customers.id
WHERE orders.id is null
ORDER BY customers.first_name



#ürün tablosundan ve sipariş detayları tablosunda bir birleştirme yapıp hangi ürünlerin satıldığını veya 
#sipariş edildiğini veya hangi ürünlerin hiç sipariş edilmediğini gösterebiliriz.

select products.product_name,products.id,order_details.id from products LEFT JOIN order_details
on products.id = order_details.product_id 
WHERE order_details.id is null
