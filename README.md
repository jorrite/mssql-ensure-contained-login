# mssql-ensure-contained-login

Simple docker image to ensure a contained login exists on a MSSQL database. Be aware that this only works for databases where `CONTAINED DATABASE AUTHENTICATION` is set to `1` and the database itself has a containment type of either `NONE` or `PARTIAL`. These settings are typically enabled on Azure SQL Servers and Databases.
