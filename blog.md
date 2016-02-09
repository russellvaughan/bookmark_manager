What is a relational database?
------------------------------

A relational database is a collection of data organised in pre defined tables. They allow you to link information from different tables which have related values.

The data can be accessed or reassembled in many different ways without having to reorganize the database tables. 


How are these different to non-relational databases?
----------------------------------------------------

Relational Databases are:

* Designed to scale up (vertically). So essentially if you need more power, you need a bigger, more powerful computer.
* Designed to handle structured data.
	* This means they work with predefined fields. So for an example case like "users", these fields would be things such as ID, Name, Email, Favourite colour
	* However, if you want to add/or increase a field (like a second favourite colour), you need to add a new table.
* Designed for atomic transactions. 
	* Atomic transactions are multiple changes that have to happen in a database. They need to make sure they all happen or none of them happen. For example, if I take money out of a ATM, 2 things have to happen, I get the cash and my bank balance is reduced. if both of those don't happen at the same time...bad news for everyone.

NoSQL are:

* Designed to scale out (horizontally). If I need more power, i can just buy additional computers and connect them.
* Designed to handle semi structured and unstructured data
	* Basically you can add elements to it. So if a person has a new favourite colour, rather than adding a new table and making a link to it, you can just add it it the exisiting table.
* Designed for "eventual transactions" 
	* All "eventual transactions" will happen - but there could be a delay. So you may read the info and all of the elements may not have updated.


What are the benefits of a relational database?  
-----------------------------------------------

* Avoids data duplication
* Avoids inconsistent records
* Easier to change data
* Easier to change data format
* Data can be added and removed easily
* Easier to maintain security.


What are the risks of a relational database?  
--------------------------------------------
There are many (see: http://insideanalysis.com/2009/02/is-the-relational-database-doomed/).  However, one key issue explored by Tony Bain (http://blog.tonybain.com/tony_bain/2009/05/the-problem-with-the-relational-database-part-1-the-deployment-model.html), is that of maintenance:

 * when co-located independant databases are stored on a single server - the dynamic nature of the query load (in terms of data volume and nature) makes managing capacity a complicated and time-consuming task, as such the database to server ratio is usually capped at 10:1

 * this then leads to a follow-on problem of resource inefficiency and ineffective distribution, as a company wtith 100 database servers could have 70% of those underutilized, 20% being utilised optimally and 10% suffering from poor performance as a result of bottlenecks

 * to manage this, a Database Administrator (DBA) has to monitor the servers to keep current query demands as optimal as possible, continually staying one-step ahead of the requirements being placed on the database(s) - multiply this across hundreds of servers and the cost of maintenance becomes significant

This has led to the concern 'is the relational database doomed...'.  According to Robin Boor (http://insideanalysis.com/2009/02/is-the-relational-database-doomed/), the answer is 'not really....  The only thing that is doomed is the idea that a relational model offers an effective general solution to the problem of storing data in a convenient and accessible form.  It never did and it will never do.''
