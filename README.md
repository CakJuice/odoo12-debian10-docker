# Odoo 12 with Docker.
Using Debian 10 (Buster) & Wkhtmltopdf 0.12.5-*

## Prerequesities
Install docker & docker-compose

## Notes
You can put your addons enterprise in addons-enterprise/ and your custom addons in addons-extra/

## Run Odoo.
Type `docker-compose up` and run `localhost:9069` on your browser

## Create scaffold new module.
Type `docker-compose run web odoo scaffold module_name /mnt/addons-extra/`

## Notes
You can put your addons enterprise in addons-enterprise/ and your custom addons in addons-extra/
