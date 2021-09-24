mysqld -u root &
sleep 5

echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root --skip-password
#echo "ALTER USER 'root'@'%' IDENTIFIED BY '${R_PASS}'; FLUSH PRIVILEGES;" | mysql -u root --skip-password
#echo "CREATE USER '${USER}'@'%' IDENTIFIED BY '${PASS}'; FLUSH PRIVILEGES" | mysql -u root --skip-password;
echo "DROP USER ''@'%';" | mysql -u root --skip-password
