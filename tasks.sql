select pr.productCode,pr.productName,pr.quantityInStock,pr.buyPrice,pr.MSRP,avg(od.priceEach) as avrage_sold_price from products pr
join orderdetails od on pr.productCode = od.productCode
group by pr.productName;


select pr.productCode,pr.productName,pr.buyPrice,pr.MSRP,
avg(od.priceEach) as avrage_sold_price,od.quantityOrdered,(od.quantityOrdered * avg(od.priceEach)) as ordervalue,
(pr.buyPrice * od.quantityOrdered) as cost_value_of_order
from products pr
join orderdetails od on pr.productCode = od.productCode
group by pr.productName;


select pr.productCode,pr.productName,pr.buyPrice,pr.MSRP,
avg(od.priceEach) as avrage_sold_price,od.quantityOrdered,(od.quantityOrdered * avg(od.priceEach)) as ordervalue,
(pr.buyPrice * od.quantityOrdered) as cost_value_of_order,
((od.quantityOrdered * avg(od.priceEach)) - (pr.buyPrice * od.quantityOrdered) ) as profit
from products pr
join orderdetails od on pr.productCode = od.productCode
group by pr.productName;


select o.orderNumber,o.orderDate,pr.productCode,pr.productName,pr.buyPrice,pr.MSRP,
avg(od.priceEach) as avrage_sold_price,od.quantityOrdered,(od.quantityOrdered * avg(od.priceEach)) as ordervalue,
(pr.buyPrice * od.quantityOrdered) as cost_value_of_order,
((od.quantityOrdered * avg(od.priceEach)) - (pr.buyPrice * od.quantityOrdered) ) as profit
from products pr
join orderdetails od on pr.productCode = od.productCode
join orders o on o.orderNumber = od.orderNumber
group by pr.productName;


select o.orderNumber,o.orderDate,pr.productCode,pr.productName,pr.buyPrice,pr.MSRP,
avg(od.priceEach) as avrage_sold_price,od.quantityOrdered,(od.quantityOrdered * avg(od.priceEach)) as ordervalue,
(pr.buyPrice * od.quantityOrdered) as cost_value_of_order,
((od.quantityOrdered * avg(od.priceEach)) - (pr.buyPrice * od.quantityOrdered) ) as profit
from products pr
join orderdetails od on pr.productCode = od.productCode
join orders o on o.orderNumber = od.orderNumber
group by o.orderNumber;