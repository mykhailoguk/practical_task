#!/bin/bash

printf '\e[1;34m%-6s\e[m' "Sending 10 requests to no limited endpoint"
siege -b -r 1 -c $1 http://127.0.0.1:8080/no_limit/uploads/terraform.json

printf '\e[1;34m%-6s\e[m' "10 requests hitting a rate-limited endpoint at the same time"
siege -b -r 1 -c $1 http://127.0.0.1:8080/limit0/uploads/terraform.json

printf '\e[1;34m%-6s\e[m' "10 concurrent requests sent at once to an endpoint with a burst=5 argument"
siege -b -r 1 -c $1 http://127.0.0.1:8080/limit5/uploads/terraform.json

printf '\e[1;34m%-6s\e[m' "10 concurrent requests sent to an endpoint set up with burst=5 nodelay"
siege -b -r 1 -c $1 http://127.0.0.1:8080/limit5_nodelay/uploads/terraform.json
