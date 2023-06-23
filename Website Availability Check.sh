#!/bin/bash

websites=("https://www.microsoft.com" "https://www.google.com")

# Loop through each website in the array
for website in "${websites[@]}"; do
    # Send an HTTP request to the current website and store the response
    response=$(curl -Is "$website" -o /dev/null -w "%{http_code}")

    # Check the status code of the response
    if [ "$response" -eq 200 ]; then
        # If the status code is 200 (OK), print that the website is online
        echo "Website $website is online"
    else
        # If the status code is not 200, print that the website is offline
        echo "Website $website is offline"
    fi
done
