#İkiden fazla birleştirmeler için;
select  orders.id,CONCAT(customers.first_name,customers.last_name) as OrdersOwner,orders.order_date from orders INNER JOIN customers on orders.customer_id = customers.id


//Sorguda urunun fiyatı siparişin zamanı ve kime gönderildiğini yazdırdık 3 tablo ile işlem yaptık

select  orders.id,CONCAT(customers.first_name,customers.last_name) as OrdersOwner,orders.order_date,order_details.unit_price
from orders
INNER JOIN customers on orders.customer_id = customers.id
INNER JOIN order_details on  order_details.order_id = orders.id
ORDER BY customerName


//Sorguda bu sefer 4 tablo ile işlem yaptık yukarıdakinden farklı olarak bu sefer ürünün de bilgilerini getirdik.
select  orders.id,CONCAT(customers.first_name,customers.last_name) as OrdersOwner,orders.order_date,order_details.unit_price,products.product_name as UrunAdi
from orders
INNER JOIN customers on orders.customer_id = customers.id
INNER JOIN order_details on  order_details.order_id = orders.id
INNER JOIN products on products.id = order_details.product_id



//Sorguda bu sefer müşterinin ne kadar ödediğini fiyat ve ürün mikrarını çarparak hesapladık tabi her bir ürün için yaptık bunu 
//Kişiyi alarak ne kadar ödediğini bulmak için başka sorgu yazılması gerekir.
select CONCAT(customers.first_name,customers.last_name) as OrdersOwner,orders.order_date,order_details.unit_price,products.product_name as UrunAdi,(order_details.quantity * order_details.unit_price) as Toplam
from orders
INNER JOIN customers on orders.customer_id = customers.id
INNER JOIN order_details on  order_details.order_id = orders.id
INNER JOIN products on products.id = order_details.product_id

//Yukarıda bahsedilen kişinin tüm harcalamalı sorgusu bu şekilde yapılır. Order By ile her bir siparişe göre sıralamazsak tüm siparişlerin
//toplamını getiri bu nedenle gruplamak gerekir. Mesela id = 35 olan siparişin 4 ürünü var bunları adet ile çarpacak ve bu 4 ürünü toplayacak
select CONCAT(customers.first_name,customers.last_name) as OrdersOwner,orders.order_date,order_details.unit_price,products.product_name as UrunAdi,SUM(order_details.quantity * order_details.unit_price) as Toplam
from orders
INNER JOIN customers on orders.customer_id = customers.id
INNER JOIN order_details on  order_details.order_id = orders.id
INNER JOIN products on products.id = order_details.product_id
GROUP BY orders.id

