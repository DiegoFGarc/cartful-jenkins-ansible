#!/bin/bash

base_url="https://api-env.cartfulsolutions.com"
environment="staging"
url="$base_url/$environment/status"

response=$(curl -s -w "%{http_code}" "$url")

# Extraer el código de estado de la respuesta
status_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

if [[ $status_code -eq 200 ]]; then
    echo "Status code is 200. Pipeline continues."
else
    echo "Error: Status code is not 200. Pipeline fails."
    exit 1
fi

echo "Server response status code:"
echo $status_code