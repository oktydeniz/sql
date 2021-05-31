 select distinct category from shopping.product kategorileri tekrarlamadan getirir.

 select category,count(*) as Adet from shopping.product group by category ketegorilerin içinde bulunan urun miktarı 

 select category,Sum(price) as toplam from shopping.product group by category

 select category,avg(price) as ortalama from shopping.product group by category

 select category,avg(price) as Kosul from shopping.product where price>5000 group by category

 select category,count(*) as adet from shopping.product group by category having Count(*)>5
/*
having ile gruplanmış liste içinde koşul yazarız diğer şekilde yazdığımız koşul ile gruplama sağlanır.
having ile kriterleri liste boyutunda yapıyoruz. having grubu ilgilendirren koşullar içindir.

*/
