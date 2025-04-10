-- Question-A;
select * from customer;
select * from invoice;
select * from invoice_item;

-- Question-B
select FirstName from customer; 
select LastName from customer;
select Phone from customer;

-- Question-C 
select LastName, FirstName, Phone from customer where FirstName = "Nikki";

-- Question-D 
select LastName, FirstName, Phone, DateIn, DateOut from customer join invoice where invoice.TotalAmount > 100.00;

-- Question-E 
select LastName, FirstName, Phone from customer where FirstName like "B%";

-- Question-F 
select LastName, FirstName, Phone from customer where LastName like "%Cat%";

-- Question-G 
select LastName, FirstName, Phone from customer where Phone like "%_23%";

-- Question-H 
select max(TotalAmount), min(TotalAmount) from invoice;

-- Question-I 
select avg(TotalAmount) from invoice;

-- Question-J
select count(CustomerID) from customer;

-- Question-K 
select FirstName, LastName from customer order by FirstName, LastName;

-- Question-L
select FirstName, LastName, 
count(*) as numberOfCustomer
from customer
group by LastName, FirstName
having numberOfCustomer > 1;

 -- Question M
select FirstName, LastName, Phone
 from customer, invoice where invoice.TotalAmount > 100.00
 order by LastName asc, FirstName desc;
 
 -- Question N
 select FirstName, LastName, Phone
 from customer join invoice where invoice.TotalAmount > 100.00
 order by LastName asc, FirstName desc;
 
 -- Question O 
select LastName, FirstName, Phone
from customer join invoice on 
 customer.CustomerID = invoice.CustomerID
 where invoice.TotalAmount > 100.00
order by customer.LastName asc, customer.FirstName desc;

-- Question P
select FirstName, LastName, Phone
 from customer, invoice_item where invoice_item.item = "Dress Shirt"
 order by LastName asc, FirstName desc;
 
 -- Qustion Q
 select FirstName, LastName, Phone
 from customer join invoice_item where invoice_item.item = "Dress Shirt"
 order by LastName asc, FirstName desc;
 
 -- Question R 
select LastName,FirstName,Phone from customer join invoice on customer.CustomerID = invoice.CustomerID 
  join invoice_item on invoice_item.InvoiceNumber = invoice.InvoiceNumber
 where invoice_item.Item = "Dress Shirt" order by LastName asc , FirstName desc;