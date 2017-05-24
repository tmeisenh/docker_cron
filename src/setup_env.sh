#!/bin/bash

# Generates an envrionment variable file with values necessary for some cron job.
# If variables are defined as a part of the docker run command then this script 
# needs to be invoked as a part of that otherwise docker run env vars won't be accessible

CRON_ENV=/root/cron.env
touch CRON_ENV

printenv | grep -E "^FOO" | sed 's/^\(.*\)$/export \1/g' >> $CRON_ENV
printenv | grep -E "^BAR" | sed 's/^\(.*\)$/export "\1"/g' >> $CRON_ENV
