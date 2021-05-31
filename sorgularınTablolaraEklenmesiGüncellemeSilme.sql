

#Her bir çalışanın yaptığı sipariş miktarı bu sorguyu nasıl insert haline getiririz ? 
-- Grupladığın zaman sayma toplama işlemi yapılabilir.

INSERT INTO empleyee_performans(employee_id,fullname,email,satis_adedi)
select employees.id,CONCAT(employees.first_name,' ',employees.last_name) as FullName,employees.email_address,COUNT(orders.id) AS satis_adedi 
from employees LEFT JOIN orders on employees.id = orders.employee_id
GROUP BY employees.id

-- Join ile update


#herhangi bir tabloda yapılan füncelleme ilişkili diğer tablolarda da yapılması gerekir.
#Burada önemli olan sadece güncellenecek alanları yapmak ve veri tabanını yotmamak bu nedenle filtreleme yapılması gerekir.

update employees INNER JOIN empleyee_performans 
on employees.id = empleyee_performans.employee_id
set employees.email_address = empleyee_performans.email
WHERE empleyee_performans.email LIKE '%Updated%'; //filtreleme


 -- Join ile silme işlemi

#siparişi olmayan müşterileri siliniz.

select customers.id,customers.first_name from customers LEFT JOIN orders on orders.customer_id = customers.id
where orders.customer_id is null; //görüntüledik.

#silme işlemi
delete customers
from customers LEFT JOIN orders 
on orders.customer_id = customers.id
WHERE orders.customer_id is null 