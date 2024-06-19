#!/bin/bash
# Check if the server is running by sending a request to localhost
HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}\n" http://52.77.96.4/)

echo "HTTP Status: $HTTP_STATUS"

if [ "$HTTP_STATUS" -eq 200 ]; then
  echo "Validation successful"
  exit 0
else
  echo "Validation failed"
  exit 1
fi
