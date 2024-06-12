#!/bin/bash
#Prompt for your name
read -p "Enter your name: " YOUR_NAME
# Update and upgrade system packages (assuming sudo privileges)
sudo apt update && sudo apt upgrade -y &> /dev/null
# Install Docker and curl (assuming not already installed)
if ! which docker >/dev/null 2>&1; then
  sudo apt install docker.io -y &> /dev/null
fi

if ! which curl >/dev/null 2>&1; then
  sudo apt install curl -y &> /dev/null
fi
# Run the Docker container in detached mode
docker run -d \
  --network="host" \
  --name analog \
  -v /var/lib/analog:/data \
  analoglabs/timechain \
  --base-path /data \
  --rpc-external \
  --unsafe-rpc-external \
  --rpc-cors all \
  --name="$YOUR_NAME" \
  --rpc-methods Unsafe
# Wait for the container to be fully running (optional)
sleep 5  # Adjust the sleep time as needed
# Send the curl request and capture the JSON output
RESULT=$(curl -s -X POST http://127.0.0.1:9944 \
  -H "Content-Type: application/json;charset=utf-8" \
  -d "{ \"jsonrpc\": \"2.0\", \"id\": 1, \"method\": \"author_rotateKeys\", \"params\": [] }")
# Print the desired output
echo "$RESULT"
