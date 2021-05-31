-- select * from shopping.product where idproduct Not between 1 and 5 
-- select * from shopping.product where category in('Telefon','TV')
-- select * from shopping.product where category not in('Telefon','TV')
-- select product.name from shopping.product where product.name like '%Ip%'
-- select * from shopping.product where product.name like '_p%' ikinci harfi p ilk harfi önemli değil
-- select * from shopping.product where product.name like 'S_m%' 
-- select * from shopping.product where product.name not like 'S_m%' 

-- select * from shopping.product order by price
-- select * from shopping.product order by name ASC
-- select * from shopping.product order by name DESC
-- select * from shopping.product order by category,price 
select * from shopping.product order by category desc,price asc