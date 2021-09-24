mysqld -u root &
sleep 5

echo "CREATE DATABASE IF NOT EXISTS wordpress;" | mysql -u root --skip-password
echo "CREATE USER 'root'@'%' IDENTIFIED BY '${R_PASS}'; GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root --skip-password
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${R_PASS}'; GRANT ALL ON *.* TO 'root'@'localhost' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "CREATE USER '${USER}'@'%' IDENTIFIED BY '${PASS}'; GRANT ALL ON *.* TO '${USER}'@'%' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -u root -p${R_PASS};
echo "CREATE USER '${USER}'@'localhost' IDENTIFIED BY '${PASS}'; GRANT ALL ON *.* TO '${USER}'@'localhost' WITH GRANT OPTION" | mysql -u root -p${R_PASS};
echo "DROP USER ''@'%';" | mysql -u root -p${R_PASS}
