#!/bin/bash

# prevent health-check
monit unmonitor currency
monit unmonitor laravel-queue

# stop nginx
monit stop nginx

exit 0
