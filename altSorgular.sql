#orders tablosunda orders_status diye bir alan var bu alan 1-3 arasında değer alıyor bu degerler siparişin durumunu gösteriyor 1- kargoda 3- bitti gibi...

select id,order_date from orders 
WHERE orders.status_id = (SELECT id from orders_status WHERE orders_status.status_name ='Closed')
//Yukarıdaki sorgu tıpkı aşağıdaki gibi çalışacak.

select id,order_date from orders WHERE orders.status_id = 3

#müşterilerin siparişlerini getirme işlemi joinlerle yapılabiliyordu ama öylede yapılır.

SELECT first_name,last_name,
(SELECT COUNT(orders.id) from orders WHERE orders.customer_id = customers.id) as OrderCount
from customers

//Başka örnek

SELECT products.id,products.product_name from products
WHERE products.id in (1,2,3) //sayıları yazmak yerine bunları getirecek alt sorgu yazılabilir.

SELECT products.id,products.product_name from products
WHERE products.id in (select order_details.product_id FROM order_details WHERE order_details.quantity>100) //satışımız 100'ün üzerinde olan kayıtlar gelir.
