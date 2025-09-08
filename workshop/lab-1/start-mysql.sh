#!/bin/bash

# Inicjalizuj bazę danych MySQL, jeśli nie istnieje
if [ ! -d "/var/lib/mysql/mysql" ]; then
    mysqld --initialize-insecure --user=mysql
fi

# Uruchom serwer MySQL
exec mysqld --user=mysql --console --skip-grant-tables

