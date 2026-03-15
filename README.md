<h1> Sales Analysis SQL Project</h1>
<h2> Project Overview </h2><br>
Project Title: Sales Analysis   <br> 
Database: flipkart
<h4>This project is designed to demonstrate SQL skills and techniques typically used by data analysts to explore, clean, and analyze sales data. The project involves setting up a sales database, performing exploratory data analysis (EDA), and answering specific business questions through SQL queries.</h4>

<h2>Objectives</h2>
1.Set up a sales database: Create and populate a sales database with the provided sales data.
2.Data Cleaning: Identify and remove any records with missing or null values.
3.Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to understand the dataset.
4.Business Analysis: Use SQL to answer specific business questions and derive insights from the sales data.

<h2>Project Structure</h2>

1.Database Setup
<ul>
  <li>Database Creation: The project starts by creating a database named flipkart</li>
  <li>Table Import : Table Named product is created to store the Sale Data .The Table structure include columns for 
  Product_id,BrandName,	Category,Individual_category,category_by_Gender,Description,	discount_price,	original_price,	DiscountOffer,	SizeOption,	Ratings & Reviews .
  </li>
</ul>

```sql
create database Flipkart;
use Flipkart;
select	* from product;
##### Droping a Coloumn  
alter table product
drop column url; 

select	* from product;
```
2.Data Exploration & Cleaning

<ul>
<li>Record Count: Determine the total number of records in the dataset.</li>
<li>Product Count: Find out how many unique Products are in the dataset.</li>

```sql
select	* from product;
## Creating view of count_per_unit_sale

create view count_of_units_perBrand as
SELECT brandname,count(brandname) as Count_of_product
from product 
group by brandname ;
##calling of a view
select * from count_of_units_perBrand;
```

3.Data Analysis & Findings<br>
The following SQL queries were developed to answer specific business questions:
<br>List of Problems That are solved:<br>
🟢 BASIC LEVEL (Start Here)

Show all records from the product table.

Show only the following columns:
BrandName, Category, DiscountPrice (in Rs).

Find all products where category_by_Gender = 'Men'.

Show products where DiscountPrice is greater than 1000.

Find products where BrandName = 'Nike'.

Show products where Ratings are greater than 4.

Display the first 20 rows from the table.

Show all unique brand names in the dataset.

🟡 INTERMEDIATE LEVEL

Count the total number of products.

Find the number of products for each brand.

Find the average DiscountPrice of all products.

Find the maximum and minimum DiscountPrice.

Show the top 10 most expensive products.

Count how many products are available for each gender.

Find the average rating for each brand.

Find brands that have more than 50 products.

Show products where DiscountPrice is less than 500 and Ratings > 4.

🟠 ADVANCED LEVEL

Find the top 5 brands with the highest number of products.

Find the average price for each category.

Find products where DiscountPrice is less than 60% of OriginalPrice.

Find the top 10 most reviewed products.

Find brands whose average rating is greater than 4.

Find the category that has the highest average price.

Find top 5 brands with the highest average rating.

Find brands that sell products for both Men and Women.
<hr>
<hr>






















