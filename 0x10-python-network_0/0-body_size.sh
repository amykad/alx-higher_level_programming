#!/bin/bash

# Check if the user has provided a URL
if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Assign the URL provided as a command-line argument to a variable
URL=$1

# Use curl to send a request to the URL and store the response body in a temporary file
RESPONSE=$(curl -s -o temp_response.txt -w "%{size_download}" $URL)

# Display the size of the response body in bytes
echo "Size of the response body: $RESPONSE bytes"

# Clean up the temporary file
rm temp_response.txt
