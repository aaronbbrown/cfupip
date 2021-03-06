#!/bin/sh
set -e

if [ -z "$EMAIL" ]; then
  echo "Please set the EMAIL environment variable"
  exit 1
fi

if [ -z "$DOMAIN" ]; then
  echo "Please set the DOMAIN environment variable"
  exit 1
fi

if [ -z "$RECORD" ]; then
  echo "Please set the RECORD environment variable"
  exit 1
fi

IP=$(curl -s icanhazip.com)
if [ -z "$IP" ]; then
  echo "Failed to get IP from icanhazip.com"
  exit 1
fi

cfcli -e "$EMAIL" -d "$DOMAIN" -k "$TOKEN" -t A edit "$RECORD" "$IP" 2>&1
