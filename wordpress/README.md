# wordpress

Installation using docker-compose

based on https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose

Open bash shell in wordpress using

```
docker compose exec wordpress bash
```

file .env contains 

```
MYSQL_ROOT_PASSWORD=YYYYYYY
MYSQL_USER=eocis_wp
MYSQL_PASSWORD=XXXXXX
```