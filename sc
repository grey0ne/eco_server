#!/usr/bin/env bash

set -e
set -a

source .env

if [ $1 = "start" ]; then
    sudo docker compose up -d
elif [ $1 = "stop" ]; then
    sudo docker compose down
fi
    
