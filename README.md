# portal

wordpress setup, NGINX configuration and static web pages for the EOCIS data portal

## deployment 

### static files

static files include the root page for the portal, images and common bootstrap components

`/static` is deployed to the EOCIS host at `/home/dev/services/portal/static`

Use [scripts/sync.sh](scripts/sync.sh) to deploy

### wordpress 

wordpress is deployed using docker compose to `/home/dev/wordpress` on the host

See [wordpress/README.md](wordpress/README.md) for more information

### nginx

nginx's configuration file is [nginx/nginx.conf](nginx/nginx.conf) and should be copied to `/etc/nginx/nginx.conf` on the host

### /var/www/html/portal

Set up this folder on the host machine:

```
cd /var/www/html/portal
ln -s /home/dev/services/portal/static/bootstrap-5.1.3-dist bootstrap-5.1.3-dist
ln -s /home/dev/services/dashboard/static dashboard
ln -s /home/dev/services/portal/static/documents documents
ln -s /home/dev/services/portal/static/images images
ln -s /home/dev/services/portal/static/index.html index.html
ln -s /home/dev/services/portal/static/style.css style.css
ln -s /home/dev/services/viewer/static viewer
```