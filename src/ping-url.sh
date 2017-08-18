#!/bin/bash

# TRGT_URL 
# INTERVAL

if [ -z ${TRGT_URL} ] || [ -z ${INTERVAL} ]; then
  echo "ERROR:  check-url.sh requires TRGT_URL and INTERVAL env vars to be set."
  echo "Usage: check a url TRGT_URL every INTERVAL seconds"
  exit 1
fi

while true
do
  curl -i -q ${TRGT_URL} && echo
  sleep ${INTERVAL}
done
