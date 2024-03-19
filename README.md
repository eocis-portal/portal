# portal

wordpress setup and static web pages for the EOCIS data portal

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

