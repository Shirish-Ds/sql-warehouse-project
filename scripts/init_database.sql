/*
=========================================================================================
create Database and Schemas
=========================================================================================

Script purpose :

          This script creates a new database named 'DATABASEWAREHOUSE' after checking if it already exists.
          if the database exists ,it is dropped and recreated,Additionally ,the script sets up three schemas
          within the database : 'bronze' ,'silver',and 'gold'.

WARNING:
      Running this script will drop the entire 'DATAWAREHOUSE' database if it exists
      All data in the database will be permanently deleted . proceed with caution 
      and ensure you have proper backups before running this script.
*/

USE MASTER;
GO

--DROP AND RECREATE THE ;DATAWAREHOUSE' DATABASE 
IF EXISTS (SELECT 1 FROM SYS.DATABASES WHERE NAME = 'DATAWAREHOUSE')
BEGIN
    ALTER DATABASE DATAWAREHOUSE SET SINGLE USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DATAWAREHOUSE;
END;
GO

--CREATE THE 'DATAWAREHOUSE' DATABASE 

CREATE DATABASE DATAWAREHOUSE;
GO 

USE DATAWAREHOUSE;
GO

--CREATE SCHEMAS
CREATE SCHEMA BRONZE;
GO

CREATE SCHEMA SILVER;
GO

CREATE SCHEMA GOLD;
GO

