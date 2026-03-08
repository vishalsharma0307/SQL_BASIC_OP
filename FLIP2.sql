USE FLIPKART;
select *from product;

-- 🟢 BASIC LEVEL (Start Here)

-- Show all records from the product table.

-- Show only the following columns:
-- BrandName, Category, DiscountPrice (in Rs).

-- Find all products where category_by_Gender = 'Men'.

-- Show products where DiscountPrice is greater than 1000.

-- Find products where BrandName = 'Nike'.

-- Show products where Ratings are greater than 4.

-- Display the first 20 rows from the table.

-- Show all unique brand names in the dataset.
###############################################################

 ## 1.Show all records from the product table.
 use flipkart;
 select * from product;
 
 ## 2.Show only the following columns:
-- BrandName, Category, DiscountPrice (in Rs).
select BrandName, Category, Discount_Price
from product;

## 3.Find all products where category_by_Gender = 'Men'.
select * from product;
select * from product
where category_by_gender="men";

## 4.Show products where DiscountPrice is greater than 1000.
select * from product
where discount_price > 1000 
order by discount_price desc;

## 5.Find products where BrandName = 'Nike'.
select * from product;
select * from product
where brandname="nike";

## 6.Show products where Ratings are greater than 4.
select * from product 
where ratings > 4 ;

## 7.Display the first 20 rows from the table.
select * from product
limit 20;

## 8.Show all unique brand names in the dataset.
select distinct(brandname) from product;

########################################################
-- 🟡 INTERMEDIATE LEVEL

-- Count the total number of products.

-- Find the number of products for each brand.

-- Find the average DiscountPrice of all products.

-- Find the maximum and minimum DiscountPrice.

-- Show the top 10 most expensive products.

-- Count how many products are available for each gender.

-- Find the average rating for each brand.

-- Find brands that have more than 50 products.

-- Show products where DiscountPrice is less than 500 and Ratings > 4.
#######################################################################

## 9.Count the total number of products.
select * from product;
select count(distinct(product_id))as total_products
from product;


## 10 .Find the number of products for each brand.
select brandname,count(product_id) as count_
from product
group by brandname;
# or call of a view
select * from count_of_units_perbrand;

## 11.Find the average DiscountPrice of all products.
select * from product;
select avg(discount_price) from product;

## 12.Find the maximum and minimum DiscountPrice.
#safe mode of
SET SQL_SAFE_UPDATES = 0;
#Removing empty space by 0
UPDATE product
SET discount_price = 0
WHERE discount_price ='';
# checking of data type
 describe product;
# data type change
 alter table product
 change discount_price discount_price int;
 
SELECT MAX(discount_price),min(discount_price)
from product;
## 13.Show the top 10 most expensive products.
select row_number() over (order by original_price desc)as Sl_no, original_price 
from product
order by original_price desc 
limit 10;

## 14 .Count how many products are available for each gender.
select count(category_by_gender),category_by_gender from product
group by category_by_gender;

select * from product;
## 15 .Find the average rating for each brand.
select brandname ,round(avg(ratings),1) as Rating
from product
group by brandname ;

## 16. Find brands that have more than 50 products.
select brandname,count(product_id) as Item
 from product
 group by brandname 
 having item > 50;

## 17 . Show products where DiscountPrice is less than 500 and Ratings > 4.
select brandname,discount_price,ratings
 from product
 where discount_price < 500  and ratings > 4 ;

########################################################























































