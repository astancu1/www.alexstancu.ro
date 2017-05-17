#!/bin/bash

# copy env
cp /usr/share/awsbootstrap/keychain/shared/.env /var/www/currency/

# start nginx
monit start nginx

# reload monit configs
systemctl reload monit.service

# start health-check
monit monitor currency
monit monitor laravel-queue

exit 0
