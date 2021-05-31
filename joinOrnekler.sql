#Hangi üründen kaç tane satılmış ? 

select COUNT(order_details.product_id) as pCount,products.product_name from order_details INNER JOIN products on order_details.product_id = products.id
GROUP BY products.product_name
ORDER BY pCount




#En çok Kazandıran ilk 3 ürün hangisidir ? 
select products.product_name, SUM(order_details.quantity * order_details.unit_price) as Price from order_details INNER Join products on order_details.product_id = products.id
GROUP BY products.id
ORDER BY Price DESC LIMIT 3


#Hangi Kargo Şirketlerine toplam ne kadar ödeme yapılmış ? 
SELECT suppliers.company,SUM(orders.shipping_fee) as Total from orders inner Join suppliers on orders.shipper_id = suppliers.id
GROUP BY suppliers.id
ORDER BY Total



#En uygun ücret hangisidir kargo için ? 
//Örneğin 10 ürün için her bir kargo şirketi için ortalama ne kadar para veriyoruz ? 

select suppliers.company ,AVG(orders.shipping_fee) as s_AVG from orders INNER JOIN suppliers on suppliers.id = orders.shipper_id
WHERE orders.shipping_fee >0
GROUP BY suppliers.id

//diyelim ki yeni bir şirket geldi ve taşıdığı kargo diğerlerinden daha az olacağı için daha ucuz gözükecektir
//Bunu önlemek için

select suppliers.company ,AVG(orders.shipping_fee) as s_AVG from orders INNER JOIN suppliers on suppliers.id = orders.shipper_id
WHERE orders.shipping_fee >0 
GROUP BY suppliers.id
HAVING COUNT(orders.id)>10
