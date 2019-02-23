# Assignment 1

**All roles and users were created with an API in mind, or a frontend that these users will interact with. None of the users will ever be given access to the database directly, or any passcodes or IPs thereof. These users will interact with a frontend or some sort of graphical interface, to present them with basic CRUD operations (Given their privileges ofcourse).**

## Inventory Manager
Inventory Managers have been given privileges to products (SELECT, INSERT & UPDATE). I assume these inventory managers will update manifacturers, and products thereof. Never will a user be given delete options, although they will be able to insert newer ones, select those or update them in case they're discontinued. This goes for productlines etc aswell.

## Book Keeper
Same principle was given for the Book Keeper aswell. You never want data to disappear from your storage. All tables from and between payments and their orders have been given certain access to the book keepers. They can only view or update on certain tables (No updates on customers). Their job is to book keep with arrangements and income for that day.

## Human Ressources
Human Ressources have been given access to the employees table aswell as offices. Again, they cannot delete info, this will have to be done by higher ups that hasn't been given in the document or specified in this assignment (Would most likely be IT guys). 

## Sales
The sales team are able to view and update customers incase their info is old (phone number I can imagine is relative or emails these days, given shipment info). Although, I imagine customers register themselves on a website beforehand, although should the customer not be registered, they can also insert if it's a new customer. Pattern wise again, the sales team cannot remove data from the storage, they can insert, update to show it's redundancy, or view it as such. 

## IT
It has been given all access to all tables and all databases (This can be restricted as junior developers shouldn't have access to all data nor delete it).



# Assignment 2
Enabling logging can be done as such:

```
Execute SET GLOBAL log_output = 'TABLE';
Execute SET GLOBAL general_log = 'ON';
```

Whereafter you can review all your data. Although, in order to convert this data from BLOB to readable text (The arguments field) use: 

```
select CONVERT(argument USING utf8 ) from mysql.general_log;
```

The result of this query will be:
https://i.imgur.com/EV1bEfJ.png

# Assignment 3
Using the following command:
```
docker exec -i [CONTAINER ID HERE] mysqldump -u root --password=mingade classicmodels > some_database_dump.sql
```
Allows us to backup any given data from our database, and store it on the main host (Not the container storage, although that can be done easilly aswell)

