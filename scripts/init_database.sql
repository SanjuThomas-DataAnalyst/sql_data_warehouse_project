/*
=================================================================================
Create Database and schemas

=================================================================================

script purpose :
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within the database : ' bronze', 'silve' and 'gold'.

Warning : 
  Running this script will drop the entire 'DataWarehose' database if it exists.
  All the data in the database will be permenently deleted. Proceed with caution and ensure you have proper backups before running this script.

*/

--create Database 'DataWareHouse'

use master;
Go

--Drop and recreate the 'DataWarehouse' database
if exists (select 1 from sys.databases where name = 'DataWarehouse' )
Begin
	alter DATABASE DataWarehouse set single_user with rollback imediate;
	drop database DataWarehouse;
end;

GO

--create the 'DataWarehouse' database
create database DataWarehouse;
Go

USE DataWarehouse;
Go

--create schemas

create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO
