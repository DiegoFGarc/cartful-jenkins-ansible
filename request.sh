#!/bin/bash

base_url="https://api-env.cartfulsolutions.com"
environment="staging"
url="$base_url/$environment/status"

response=$(curl -s -w "%{http_code}" "$url")

# Extraer el código de estado de la respuesta
status_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

echo "Server response status code:"
echo $status_code