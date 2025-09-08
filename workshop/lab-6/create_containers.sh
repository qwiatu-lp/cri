podman run --pod web_app -d -v mysql-data:/var/lib/mysql --name mysql-container debian-mysql
podman run --pod web_app --name nginx-container -d docker.io/library/nginx:latest
