#!/bin/bash
DB_SCRIPT=$(envsubst < contained-user.sql)
/opt/mssql-tools/bin/sqlcmd -S $DB_ENDPOINT -U $DB_USERNAME -P $DB_PASSWORD -d $DB_NAME -Q "$DB_SCRIPT"