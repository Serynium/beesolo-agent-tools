#!/bin/sh
exec curl --fail-with-body --silent --show-error --max-time 20 \
  'https://beesolo.app/mcp/product' \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  --data '{
    "jsonrpc": "2.0",
    "id": 1,
    "method": "initialize",
    "params": {
      "protocolVersion": "2025-11-25",
      "capabilities": {},
      "clientInfo": {"name": "beesolo-quickstart", "version": "1.0.0"}
    }
  }'
