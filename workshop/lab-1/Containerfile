# Użyj debian jako obrazu bazowego
FROM docker.io/library/debian:latest

# Zdefiniuj argumenty, które mogą być ustawione podczas budowania obrazu
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD

# Zainstaluj MySQL
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    rm -rf /var/lib/apt/lists/*

# Ustaw zmienne środowiskowe dla MySQL na podstawie wartości ARG
ENV MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
    MYSQL_DATABASE=${MYSQL_DATABASE} \
    MYSQL_USER=${MYSQL_USER} \
    MYSQL_PASSWORD=${MYSQL_PASSWORD}

# Ustaw domyślny port dla MySQL
EXPOSE 3306

# Ustaw katalog dla danych MySQL
VOLUME /var/lib/mysql

# Skopiuj skrypt startowy do kontenera i nadaj mu uprawnienia do wykonania
COPY start-mysql.sh /usr/local/bin/start-mysql.sh
COPY mariadb.cnf /etc/mysql/mariadb.cnf
RUN chmod +x /usr/local/bin/start-mysql.sh

# Zmień właściciela katalogów, aby pasowały do użytkownika mysql
RUN mkdir -p /var/run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld /usr/local/bin/start-mysql.sh

# Ustaw użytkownika, na którym będzie działał kontener
USER mysql

# Zdefiniuj CMD
CMD ["/usr/local/bin/start-mysql.sh"]

