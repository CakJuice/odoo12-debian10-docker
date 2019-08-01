FROM debian:10
LABEL maintainer="hd.brandoz@gmail.com"

ENV LANG C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y
RUN apt install -y wget python3 python3-dev python3-pip postgresql-client wkhtmltopdf

RUN wget https://nightly.odoo.com/12.0/nightly/deb/odoo_12.0.latest_all.deb
RUN apt install -y ./odoo_12.0.latest_all.deb

COPY ./odoo.conf /etc/odoo/
RUN chown odoo:odoo /etc/odoo/odoo.conf

RUN mkdir -p /mnt/addons-enterprise/
RUN chown -R odoo:odoo /mnt/addons-enterprise/
COPY ./addons-enterprise /mnt/addons-enterprise/

RUN mkdir -p /mnt/addons-extra/
RUN chown -R odoo:odoo /mnt/addons-extra/
COPY ./addons-extra /mnt/addons-extra/
