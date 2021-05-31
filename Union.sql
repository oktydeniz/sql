#inner join ile yapılan tabloları yan yana getirme işlemi bu işlemle alt alta gelecek


#tekrarlanan kayıtların da gelmesi için union all denmeli
SELECT empleyee_performans.email FROM empleyee_performans
UNION ALL SELECT employees.email_address from employees



SELECT city from employees UNION SELECT city from customers

SELECT city,country_region from employees UNION ALL SELECT city,country_region from customers