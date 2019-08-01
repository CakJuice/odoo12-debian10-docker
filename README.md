# Odoo 12 with Docker.
Using Debian 10 (Buster) & Wkhtmltopdf 0.12.5-*

## Prerequesities
Install docker & docker-compose.

## Notes
You can put your enterprise addons in addons-enterprise/ and your custom addons in addons-extra/.

## Run Odoo.
Type `docker-compose up` to run Odoo container, or `docker-compose up -d` to run with detach (background mode).

Then run `localhost:9069` on your browser.

## Stop Odoo.
Type `docker-compose stop` to stop detached Odoo container.
 
## Remove Previous Container.
Type `docker-compose down` to remove previous running container.

## Create scaffold new module.
Type `docker-compose run web odoo scaffold module_name /mnt/addons-extra/`.

## Execute postgresql command.
You can run postgresql command in running container.

Type `docker-compose up -d` then type `docker-compose exec db psql -U odoo -d dbname`.

## Notes
You can put your enterprise addons in addons-enterprise/ and your custom addons in addons-extra/

Please refer to <a href="https://docs.docker.com/">Docker docs</a> if you have problem with docker.
