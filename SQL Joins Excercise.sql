/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
select P.Name as product, C.Name as CategoryID FROM products as P
inner join categories as C on C.CategoryID = P.CategoryID
where C.name = "computers";
 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select P.Name, P.Price, r.Rating from products as p
inner join reviews as r on r.ProductID = p.ProductID
Where r.Rating = 5;
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select e.FirstName, e.LastName, Sum(s.Quantity) as total from sales as s
inner join employees as e on e.EmployeeID = s.EmployeeID
group by e.EmployeeID
order by Total DESC
limit 2;

select * from sales
where EmployeeID = 33809;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as 'Depatment Name', c.Name as 'category name' FROM departments as d 
inner join categories as c on c.DepartmentID = d.DepartmentID
where c.name = 'appliances' or c.name = 'games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 select p.name, sum(s.Quantity) as 'Total Sold', sum(s.quantity * s.PricePerUnit) as 'Total Price'
from products as p
inner join sales as s on s.ProductID = p.ProductID
where p.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name, r.Reviewer, r.Rating, r.Comment FROM products as p
inner join reviews as r on r.ProductID = p.ProductID
where p.ProductID = 857 and r.Rating = 1;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */