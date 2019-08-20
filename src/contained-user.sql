USE [$DB_NAME]
GO
IF NOT EXISTS (SELECT [name]
                FROM [sys].[database_principals]
                WHERE [type] = N'S' AND [name] = N'$CONTAINED_DB_USERNAME')
Begin
    CREATE USER [$CONTAINED_DB_USERNAME] WITH PASSWORD = '$CONTAINED_DB_PASSWORD';
end
ALTER ROLE [db_owner] ADD MEMBER [$CONTAINED_DB_USERNAME];
GO
