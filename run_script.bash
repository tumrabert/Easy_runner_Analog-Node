#!/bin/bash

# Prompt for the user's name
echo "Please enter your name:"
read YOUR_NAME

# Update and upgrade system packages
sudo apt update -y
sudo apt upgrade -y

# Install Docker and curl
sudo apt install -y docker.io
sudo apt install -y curl

# Run the Docker container
docker run -d --network="host" --name analog -v /var/lib/analog:/data analoglabs/timechain \
  --base-path /data \
  --rpc-external \
  --unsafe-rpc-external \
  --rpc-cors all \
  --name="$YOUR_NAME" \
  --rpc-methods Unsafe \
  --telemetry-url "wss://telemetry.analog.one/submit 0"

# Pause for a moment to allow the container to start
sleep 10

# Make the curl request and filter the result
curl -s http://127.0.0.1:9944 -H "Content-Type:application/json;charset=utf-8" -d \
'{
  "jsonrpc":"2.0",
  "id":1,
  "method":"author_rotateKeys",
  "params": []
}' | jq -r '.result'
