podman run -d -v mysql-data:/var/lib/mysql --network=mysql-network -p 33006:3306 --name mysql-container debian-mysql
