select * from sales
select * from customer
select * from product
select * from region 
select * from productsubcat
select * from reeturns
select * from productcat


create View vw_combined_data as
(
select a.orderdate,
a.stockdate,
a.ordernumber,
a.productkey,
a.customerkey,
a.territorykey,
a.orderlineitem,
a.orderquantity,
b.prefix,
b.firstname,
b.lastname,
b.birthdate,
b.maritalstatus,
b.gender,
b.emailaddress,
b.annualincome,
b.totalchildren,
b.educationlevel,
b.occupation,
b.homeowner,
c.productsubcategorykey,
c.productsku,
c.productname,
c.modelname,
c.productdescription,
c.productcolor,
c.productsize,
c.productcost,
c.productprice,
d.salesterritorykey,
d.region,
d.country,
d.continent,
e.productcategorykey,
e.subcategoryname,
f.categoryname
from sales as a inner join customer as b on	a.customerkey= b.customerkey
inner join product as c on a.productkey=c.productkey
inner join region as d on a.territorykey=d.salesterritorykey
inner join productsubcat as e on c.productsubcategorykey = e.productsubcategorykey
inner join productcat as f on e.productcategorykey = f.productcategorykey
);

select * from vw_combined_data;


