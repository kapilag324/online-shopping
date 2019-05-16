# online-shopping
ONLINE SHOPPING


Synopsis:
      
 Online shopping system that permits a customer to submit online orders for items and/or services from a store that serves both walk-in customers and online customers. The online shopping system presents an online display of an order items and an associated delivery window for items selected by the customer. The system accepts the customer's submission of a purchase order for the item in online shopping system. The online shopping system does not settle with a credit supplier of the customer until the item selected by the customer is picked from inventory but before it is delivered. Therefore, the customer can go online and make changes to the order. In addition, available service windows are presented to the customer as a function of customer selected order and service types; and further, the order picking is assigned in accordance with a picker's preference. Online Auction is also implemented in this system, by which customer can participate in bidding of special items available for the day. Time limit is maintained by the super user and the auction rates of every registered user in supervised by the super user. The initial auction amount is given by the super user and no customer can bid below the initial rate of the item. Once bidding time starts the customers who are registered with the shop can participate in the auction, if a customer bids an amount for the item, then the following customer should bid amount more than the previous bidding amount or else their amount won’t be considered as a bidding rate. The time period is maintained and no customer can bid for the product once the specified time period is over. At the end of specified time duration the auction item is sold to the customer who had bided recently, which means the maximum bidding rate.







Existing system:

        In the existing system customer must come in person to shop for buying products. For returning the product, or some defects in products also customer has to come to shop and also has to carry back the products to home which is very inconvenient. In this modern era of life peoples don’t even find to relax for themselves, in middle of this kind of situation public would really feel uncomfortable to shop in person, so they keep servants for themselves to buy necessities  and household things. Yet they have to pay the servant fro performing that task for them. Hence this manual shopping system is altogether an uncomfortable mode of shopping in many ways. And also in the existing system of manual system, it is not easy to reach shops at time due to very heavy traffic in city and vital shopping areas. The time factor is also considered to be a main factor in this manual system.

DRAWBACKS OF EXISTING SYSTEM:
•	Wastage of human effort.
•	Shopping is a manual system.
•	Bill payment is done manually.
•	Time factor is wasted in the process.
•	Mental as well as physical stress.
•	High transport expense.







Proposed system:


           This system is used to reduce the human effort .Customer can purchase the products, households and items for their home or organization online at whatever time he/she wish to buy. No time wastage and mental stress as compared to the existing system. An individual can do shopping sitting comfortably right in his home. He can view the images and rates of products he wish to buy, and also the products are delivered to their door step by means of door delivery by the shop employees. The payment for the products purchased is made by the online payment method, by which money can be transferred from their account to the concerned shopkeeper’s account irrespective of the distance of the shop. The history of items purchased by the customer is also maintained by the shop. The online payment is also kept confidential through secured gateway authentication. The System is maintained by J2EE technology. The data’s are stored in database automatically.


ADVANTAGES OF PROPOSED SYSTEM
•	Can save enormous amount of human energy.
•	Secured online payment. 
•	Selection of products is very easier.
•	Less usage of time for shopping.
•	The process involves full fetched scalability.
•	And data retrieval is faster by using J2EE technology.





Modules:

The online shopping system is proposed to have the following modules:

1.	Administrators.
2.	Customers.
3.	Online auction.
4.	Online bill payment.
5.	Virtual cart.
6.	Customer registration.
7.	Mail system.




1.	Administrators :

                                        Administrator is treated as a super user in this system.  Administrator can add, delete, update the list of items and products available fro sale in the shop. In adding new item the administrator adds the item name with its product code and rate of the product. Ha can also update the details of the existing product by updating its rate and its code or description. Deleting the item from the list means he wishes to take away that product from the sale. Administrator can also view the details of the registered customers and he has full rights to delete the registered customer if he finds some misbehavior by any customer. He can also view the available items for shopping. The mailing system is implemented in this system which enables the customer and administrator communication very effective.




2. Customers:

                         Customers are registered by means of registration option available in this system, which enables them to do further shopping. The customer then logs in to the shopping arena with their respective credentials. He/She can select the items from the list of items available fro sale in the shop. After selecting the needful items the customer can pay their bill for products purchased through online payment gateway. The online payment is secured. The selected items by the customer will be added to his cart and customer can view the items selected. The customer can participate in online auction for the items by bidding the amount above initial amount or above the last bidding in case of first bidding or successive bidding respectively. 

  

3. Online auction:
 
                                  Online auction is the mode of buying products by bidding for the item which is kept for the same. The product is announced and its initial auction rate is also announced by the administrator with time duration for the bidding process. The customer can bid for the item which is kept under auction, the first user must bid more than the initial auction rate and successive customers must bid the rate more then the previous auction rate if not the auction rate won’t be considered to be legal. 

  4. Online bill payment:
                              The item is purchased and the bill payment is done by means of online payment. The customer enters his personal bank account details and pays the bill amount needed to be paid fro the items purchased online. The payment is processed by means of secured gateway and the specified amount is transferred from the customer’s account to the shop’s account. This is the comfortable way of paying the bill for products purchased online. This module is user friendly and it is of high value usage to the online customers.

5. Virtual cart:
                                   Virtual cart is same as the realistic cart which is used to carry the items purchased in a shop; the only way it differs from the realistic cart is its virtual and imaginary tool. A customer can add the items to the virtual cart which is to be purchased online. This serves as the interface by which customer can view the selected items and can delete the items from the cart if it is not necessary.


6. Customer registration:

                                    Registration module is used by the customer to register them with the shop. The customer can give his details such as name, age, address for communication and door delivery address. The shop stores his details and delivers the products purchased by him to his delivery address instantly. This registration module provides the customer with login credentials such as username and password. He can also participate in online auction by using his credentials registered through this module of registration.
  
7. Mailing system:

                                          Mailing system is implemented in this online shopping system to make the communication between customer and shop administrator effectively. The registered user can send message or complaints regarding the online purchase made by him to the administrator. He can also receive messages from administrator for his requests and about new offers in shop. This is vital and advanced system implemented in this shopping system.
 



Software Requirements:-

•	Web Presentation		:	HTML, CSS 
•	Client – side Scripting		:	JavaScript 
•	Programming Language	:	Java
•	Web based Technologies	:            JSP 
•	Database Connectivity 	: 	JDBC
•	Java Version			:	JDK1.5
•	Backend Database		:	My SQL.
•	Operating System		:	Windows XP/2003.
•	Web Server			: 	Tomcat 6.0
•	Browser			:	IE/Mozilla


Hardware Requirements (minimum):-

•	Pentium processor     	:	1.1 GHZ
•	RAM Capacity          	:     	256 MB (min)
•	Hard Disk 		:	20GB 
•	CD-ROM Drive         	:       	32 HZ
•	Keyboard	           	:    	Standard keyboard.
•	Mouse			:	Optical
•	Monitor		:	15’’ Color Monitor

