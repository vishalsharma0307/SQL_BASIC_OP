create database Flipkart;
use Flipkart;
select	* from product;
##### Droping a Coloumn  
alter table product
drop column url; 

select	* from product;
## Creating view of count_per_unit_sale

create view count_of_units_perBrand as
SELECT brandname,count(brandname) as Count_of_product
from product 
group by brandname ;
##calling of a view
select * from count_of_units_perBrand;

select	* from product;

-- create view unique_items as
select distinct(brandname) from product;
###### rename column
alter table product
rename column `DiscountPrice (in Rs)`to Discount_price;
alter table product
rename column `OriginalPrice (in Rs)`to original_price;

select * from product;

select brandname,category,original_price,discount_price,discountoffer,category_by_gender
from product
order by original_price desc
limit 10 
offset 10;

-- we cannot use where with group by /for filtering we use `having` here
select row_number() over (order by brandname)as sl_no,brandname,sum(original_price)as before_disc,sum(discount_price)as after_disc
from product
group by Brandname
having before_disc > 5000000;








































