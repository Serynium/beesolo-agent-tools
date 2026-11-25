#!/bin/sh
if [ "$#" -ne 1 ]; then
  printf '%s\n' 'Usage: sh examples/look-up-booking-page.sh <published-shop-slug>' >&2
  exit 2
fi
case "$1" in
  ''|*[!a-z0-9-]*|-*|*-|*--*)
    printf '%s\n' 'Use a lowercase beesolo slug from the published booking link.' >&2
    exit 2
    ;;
esac
exec curl --fail-with-body --silent --show-error --max-time 20 \
  "https://beesolo.app/api/v1/booking-pages/$1"
