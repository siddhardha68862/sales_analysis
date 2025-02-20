select * from superstore;
select column_name from INFORMATION_SCHEMA.columns where TABLE_NAME='superstore';

select Customer_Name,Order_ID,Region from superstore where Postal_Code is null;

update superstore set Postal_Code=0 where Postal_Code is null;
select * from superstore where Profit is null;

update superstore set Profit=0 where Profit is null;

select * from superstore where Profit is null;

select sum(Profit) [Total_Profit] from superstore;

select distinct(Segment) from superstore;

select Segment,sum(Sales) [sales] from superstore group by Segment order by sum(Sales) desc;

select Order_date,sum(Profit) [Total_Profit] from superstore group by Order_Date;

select Top 1 Region,sum(Profit) [Total_Profit] from superstore group by Region order by Total_Profit desc ;

select top 1 Product_Name,sum(Profit) [Profit] from superstore group by Product_Name order by profit desc;

select top 1 Product_Name,sum(Sales) [Sales] from superstore group by Product_Name order by Sales desc;

select Category,(sum(Profit)/sum(Sales))*100 [profit_margin] from superstore group by Category order by profit_margin desc;

select top 10 City,sum(Profit) [Total_Profit] from superstore group by City order by Total_Profit desc ;

select distinct(Ship_Mode) from superstore;

select Ship_mode , sum(Quantity) [quantity] from superstore group by Ship_Mode order by quantity desc;
select Category,sum(Profit) [sum_profit] from superstore where Profit<0 group by Category;

select Region,sum(Profit) [sum_profit] from superstore where Profit<0 group by Region order by sum_profit desc;

select top 10 State,sum(Sales) [Sales] from superstore group by State order by sum(Sales) desc;



