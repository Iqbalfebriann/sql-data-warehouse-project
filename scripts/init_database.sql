/*
================================
Create Database & SChema
================================
Script Purposes:
  This script creates a new database called 'DataWarehouse' after checking if it already exists

WARNING:
  Running this script will drop the entire 'DataWarehouse' database if exists.
  All data in the watabase wil be permanetly deleted.

*/
USE master;
GO

--Drop and Recreate 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE 'DataWarehouse' SET Single_User WITH ROLLBACK IMMEDIATE;
  DROP DATABASE 'DataWarehouse';
END;
GO

--Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO

--Create Schema
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
