#!/bin/bash

CERTS_VOLUME=./nginx/ssl/certificates
CHALLENGE_VOLUME=./nginx/ssl/challenge
NGINX_CONTAINER=$(docker ps -q -f name=nginx)


docker run --rm --name temp_certbot -v $CERTS_VOLUME:/etc/letsencrypt -v $CHALLENGE_VOLUME:/tmp/letsencrypt certbot/certbot:v1.14.0 renew --webroot --agree-tos --no-random-sleep-on-renew -w /tmp/letsencrypt
docker exec $NGINX_CONTAINER nginx -s reload