#!/bin/bash

docker rm -f cron-test
docker build -t cron-test --no-cache .
docker run -d --name cron-test -t -e FOO=fooo -e BAR="(hello there)" cron-test /root/start.sh
