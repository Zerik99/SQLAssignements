
/*Create a list of authors that displays the last name followed by the first name for each author. The last names and first names should be separated by a comma and a blank space.
*Erik Zander
*/
SELECT LNAME || ', ' || FNAME  
FROM AUTHOR; 

/*List all information for each order item. Include an item total, which can be calculated by multiplying the Quantity and Paideach columns. 
*Use a column alias for the calculated value to show the heading “Item Total” in the output.
*Erik Zander
*/
SELECT order#,item#, isbn, quantity, paideach,
quantity * paideach AS "Item Total "
FROM orderitems;

/*Create a list of each book title stored in the BOOKS table and the category in which each book belongs.  Reverse the sequence of the columns so that the category of each book is listed first.
*Erik Zander
*/
SELECT title, category
from books;
/*inverted*/
SELECT category, title
from books;
/*Create a mailing list from the CUSTOMERS table. The mailing list should display the name, address, city, state, and zip code for each customer.
Each customer’s name should be listed in order of last name followed by first name, separated with a comma,and have the column header “Name.”
The city and state should be listed as one column of output, with the values separated by a comma and the column header “Location.”
* Erik Zander
*/
SELECT lastname|| ', ' ||firstname AS "Name", address, city|| ', ' ||state AS "Location", zip
FROM customers;
/*To determine the percentage of profit for a particular item, subtract the item’s cost from the retail price to calculate the dollar amount of profit, and then divide the profit by the item’s cost. 
*The solution is then multiplied by 100 to determine the profit percentage for each book. Use a SELECT statement to display each book’s title and percentage of profit. 
*For the column displaying the percentage markup, use “Profit %” as the column heading.
*Erik Zander
*/
SELECT title, (retail-cost)/cost*100 AS "Profit %"
FROM books;
