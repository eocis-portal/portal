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

## install wp-cli

https://make.wordpress.org/cli/handbook/guides/installing/

## backup process

### database

```
docker exec -it db bash
mysqldump -u root -p wordpress --add-drop-table > db.dump
docker cp db:/db.dump /data
```

Copy the file '/data/db.dump' to a safe location

### files

```
docker exec -it  wordpress bash
cd /var/www/html
tar cfvz ~/backup.tgz .
docker cp wordpress:/root/backup.tgz /data
```

Copy the file '/data/backup.tgz' to a safe location