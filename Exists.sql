#Buradaki alt sorgu True veya False değeri ile bir ön sorguyu yapacağız.
#Odemelerini KK ile yapmış kişiler
select customers.id,customers.first_name from customers 
WHERE EXISTS(select orders.id from orders WHERE customers.id = orders.customer_id and payment_type='Credit Card')

#ilgili müşterinin en az 2 siparişi var 
SELECT customers.id,customers.first_name,customers.last_name from customers
WHERE EXISTS(SELECT COUNT(*) from orders WHERE customers.id = orders.customer_id GROUP BY orders.customer_id HAVING COUNT(*)>2)