#!/bin/sh

set -e



# start up application
vela up -f ./first-app.yaml

# check status
vela status first-vela-app

# forward application port to check the application
vela port-forward first-vela-app 8001:8000

# Result workflow
vela workflow resume first-vela-app

# Clean up
vela delete first-vela-app


curl -H "Host: canary-demo.com"  http://127.0.0.1:9080/version