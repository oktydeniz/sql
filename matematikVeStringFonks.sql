-- min(), max(),caunt(), avg(), sum()

 select min(price) from shopping.product
 select min(price) as 'Minimum Fiyat' from shopping.product msSQL de [] kullnılır.
 select max(price) from shopping.product
 select top 1 name,price from shopping.product order by price msSql de limit kullanımı 
 select name,price from shopping.product order by price DESC limit 1
 select count(*) as 'Adet' from shopping.product 
 select avg(price) as 'Kayıtlı Urunlerin Fiyat Ort.' from shopping.product
 select sum(price) as 'Kayıtlı Urunlerin Fiyat Toplamı' from shopping.product
  select sum(price * stock) as toplam from shopping.product
 
 
 
 -- String Functions 
 
   select length('Oktay Deniz') as uzunluk
   select name,length(name) as 'Karakter Uzunluğu'from shopping.product mssql len()
  select name, LEFT(name,5) from shopping.product
 
 
  select name, concat(LEFT(name,5),'...') from shopping.product
  msSql de direk LEFT(name,5) +'...' yapsak çalışır aynı işlemler right ile de yapılabilir.
 
 select name,lower(name) from shopping.product
 select name,upper(name) from shopping.product
 select name,replace(name,' ','-') as 'new Name' from shopping.product
 select name,lower(replace(name,' ','-')) as 'new Name' from shopping.product

 select concat(trim('Oktay Deniz        '),'**')

 sadece sağdan veya soldan almak için ltrim veya rtrim kullanılabilir.
 
  select name, trim(name) from shopping.product
 