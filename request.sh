#!/bin/bash

base_url="https://api-env.cartfulsolutions.com"
environment="$ENV_NAME"
url="$base_url/$environment/status"

response=$(curl -s -w "%{http_code}" "$url")

# Extraer el código de estado de la respuesta
status_code=$(tail -n1 <<< "$code")

#echo "Server response:"
#echo "$response"

echo "Status code: $code"