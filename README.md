This is a demo application to provide e-sell functionality.

please find readme.docx to navigate with images resoures

DB Structure
1.	item
2.	seller
3.	seller_item
4.	seller_item_image
5.	stock
6.	stock_leg

item table contains with items common details and sellers’ item hold in seller item table.
A seller can hold multiple items and the same item can sell by many sellers.
Individual sellers can define their sell price for items.

Item can add to the stock with its transaction type (GRN or Stock adjustment) .
Stock ledger maintains what happened to added stock with its transaction type (GRN/GIN/Adjustment). So, it’s easy to get available stock and maintain stock quantity.

However, I do not define transactions tables and do not describe other Oauth tables 

Steps
1.	clone project from git
2.	create database name as e_sell
3.	find and export  e_sell.sql (I’m not create migration and seeds in here ) 
4.	update .env file (if u change DB name, find SetDB middleware and config it)
5.	start sever
6.	to login, you can proceed to http://localhost:8000/api/login with login details
user_id = 123456
password = Test123@
and copy token in response.
7.	To get all available items list, proceed to http://localhost:8000/api/items and use authorization beare Token as coped token, also you can search item passing search params
   
8.	To get sellers items list http://localhost:8000/api/seller_items with seller_id params
 
9.	To get seller details by item , http://localhost:8000/api/seller_by_item with seler_Item_id as params
