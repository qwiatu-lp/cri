podman build -t debian-mysql \
  --build-arg MYSQL_ROOT_PASSWORD=rootpassword \
  --build-arg MYSQL_DATABASE=developer_db \
  --build-arg MYSQL_USER=developer \
  --build-arg MYSQL_PASSWORD=developerpassword \
  .
