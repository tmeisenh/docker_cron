#!/bin/bash

## setup env for cron
/root/setup_env.sh

## do whatever, start your app?
service cron start && tail -f /dev/null
