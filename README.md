**SQL Practice Question: Sales Table (DDL, DML & DQL)**
You are managing a database for a small retail business. You need to create and manage a Sales table that stores information about product sales. Complete the tasks below using appropriate SQL statements.

**1. DDL (Data Definition Language)
Task:**
Create a table named Sales with the following columns:

**Column        Name	Description**
SaleID	      Primary key, auto-incremented
SaleDate	    Date of the sale
CustomerName	Name of the customer
Product	      Product sold
Quantity	    Quantity sold
PricePerUnit	Price per single unit
PaymentMethod	e.g., 'Cash', 'Card', 'Online'

**2. DML – INSERT (Insert Data)
Task:**
Insert the following records into the Sales table:

**SaleDate	    CustomerName	   Product	    Quantity	PricePerUnit	 PaymentMethod**
2025-05-01	  Alice	           Headphones	  2	        150.00	       Card
2025-05-02	  Bob	             Smartphone	  1	        700.00	       Online
2025-05-03	  Charlie	         Charger	    3	        25.00	         Cash
2025-05-03	  Alice	           Laptop	      1	        1200.00        Card

**3. DML – UPDATE (Update Data)
Tasks:**

a) Update the payment method to 'Online' for all sales made by 'Alice'.
b) Update the price per unit of 'Charger' to 30.00.

**4. DML – DELETE (Delete Data)
Tasks:**

a) Delete all sales records where the quantity is less than 2.
b) Delete the record of any sale made by 'Bob'.

**5. DQL (Data Query Language)
Tasks:**

a) List all sales made using the 'Card' payment method.
b) Calculate the total revenue generated (Quantity × PricePerUnit).
c) Display the total quantity of each product sold.
d) Show all sales where the quantity sold is more than 1.
e) Find the customer who spent the most in a single transaction.
