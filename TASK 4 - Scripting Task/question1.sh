#!/bin/bash
status_code=$(curl -o /dev/null -s -w "%{http_code}" https://www.guvi.in)
echo "HTTP Status Code: $status_code"
if [[ $status_code -ge 200 && $status_code -lt 300 ]]; then
    echo "Success: The request was successful."
elif [[ $status_code -ge 400 && $status_code -lt 600 ]]; then
    echo "Failure: The request failed with error code $status_code."
else
    echo "Other Response: $status_code"
fi
