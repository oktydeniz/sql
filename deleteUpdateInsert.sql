
-- Kayıt Ekleme 
-- INSERT INTO shopping.product (idproduct,name,price,imageUrl,category,stock) VALUES('12','Samsung J8','2300','98S.jpg','Telefon','3')


-- Guncelleme
-- UPDATE shopping.product SET name='Lenovo' where idproduct = 10
-- UPDATE shopping.product SET price=3985 where idproduct = 10;
 
-- eğer koşul belirtmeden bir sorgu yapmak istersek msSQL de bunu yamaya gerek yok 
/*
SET SQL_SAFE_UPDATES =0; -- yazılması zorunlu 
Update  shopping.product set price = price + 1000.12 ;
select* from shopping.product

set SQL_SAFE_UPDATES= 0;
Update shopping.product set price = price*1.1 where category = 'saat';


*/
-- image alanı null ise genel bir değer ata  eğer null olmayanlar için ise aynı sorguyu Is NOT Null diye değiştir.

-- Update shopping.product set imageUrl = 'temp.jpg' where imageUrl Is Null;

-- Silme 

-- delete from shopping.product where imageUrl='temp.jpg'
