1)
Create table Sales_sample(Product_Id Integer Primary key, Region varchar(50),date_ Date, Sales_Amount Numeric);

2)
Insert into Sales_sample values (101,'West','09-05-2023',1000),(102,'East','09-05-2023',900),
(103,'North','08-05-2023',950),(104,'South','07-05-2023',850),(105,'East','06-05-2023',840),
(106,'North','05-05-2023',950),(107,'East','04-05-2023',900),(108,'West','03-05-2023',700);

3)a.
select region,product_id,sum(sales_amount) as total_sales
from Sales_sample
group bY region,product_id
Order BY region,product_id;

b.
Select Case When Product_Id Is Null Then 'Total' Else Region End As Region,Sum(Sales_Amount) AS total_sales
From sales_sample GROUP BY ROLLUP (Region, Product_Id) ORDER BY Region;

c.
SELECT CASE WHEN Product_Id IS NULL AND Region IS NULL AND Date_ IS NULL THEN 'Total'
WHEN Product_Id IS NULL AND Region IS NULL THEN 'Total by Date'
WHEN Product_Id IS NULL AND Date_ IS NULL THEN 'Total by Region'
WHEN Region IS NULL AND Date_ IS NULL THEN 'Total by Product'
WHEN Product_Id IS NULL THEN 'Total by Region, Date'
WHEN Region IS NULL THEN 'Total by Product, Date'
WHEN Date_ IS NULL THEN 'Total by Product, Region'
ELSE 'Detail'
END AS Perspective,Product_Id,Region,Date_, SUM(Sales_Amount) AS total_sales FROM sales_sample
GROUP BY CUBE (Product_Id, Region, Date_) ORDER BY Product_Id, Region, Date_;


d.
Select * From Sales_sample Where Region = 'East' and Date_ Between '2023-04-01' and '2023-05-10'

e.
SELECT Product_Id, Region, Date_, SUM(Sales_Amount) AS total_sales FROM sales_sample WHERE
    Product_Id = '105' AND Region = 'East' AND Date_ = '06-05-2023' GROUP BY Product_Id, Region, Date_;

