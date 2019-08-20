DB_SCRIPT=$(envsubst < contained-user.sql)
sqlcmd -S $DB_ENDPOINT -U $DB_USERNAME -P $DB_PASSWORD -d $DB_NAME -Q "$DB_SCRIPT"