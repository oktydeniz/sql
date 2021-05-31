#Right Join de ise left işleminde yapılan işlemler yine aynıdır tek farkı sağ taraftaki kayıtlar gelir. 
#Aşağıdaki örnekte bizim şirkette çalışan her bir elemanın ve sattığı ürünlerle ilgili işlem yapacağız.

SELECT * FROM orders RIGHT JOIN employees on employees.id = orders.employee_id



#Siparişi olmayan çalışanları listeleyeceğiz 
SELECT orders.id,employees.first_name FROM orders RIGHT JOIN employees
on employees.id = orders.employee_id
WHERE orders.id is null
ORDER BY orders.id


#left ve right arasında tek fark tabloların yazılış sıralaması