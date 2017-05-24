FROM node:7.7.3-wheezy

RUN apt-get update && apt-get install -y cron vim zsh

## Add crontab
ADD src/crontab /etc/cron.d/env-crontab
RUN chmod 0644 /etc/cron.d/env-crontab 
RUN touch /var/log/env.cron.log

## Add start and env scripts
ADD src/setup_env.sh /root/setup_env.sh
ADD src/start.sh /root/start.sh
RUN chmod 0700 /root/setup_env.sh && chmod 0700 /root/start.sh

ENTRYPOINT ["/bin/bash"]
