#!/bin/sh
exec curl --fail-with-body --silent --show-error --max-time 20 \
  'https://beesolo.app/api/v1/plan'
