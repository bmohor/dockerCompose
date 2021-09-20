mysqld -u root &
sleep 5

echo "source /${WP_BASE}.sql;" | mysql -u root --skip-password
echo "CREATE USER 'root'@'%' IDENTIFIED BY '${R_PASS}'; GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root --skip-password

echo "CREATE USER '${USER}'@'%' IDENTIFIED BY '${PASS}'; GRANT ALL ON *.* TO '${USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql -u root --skip-password;
