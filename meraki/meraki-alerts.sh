#!/bin/bash

# Define your Meraki API key
API_KEY="API-KEY"

# Define the list of network IDs
NETWORK_IDS=("NETID-1" "NETID-2" "NETID-3" "NETID-4")  # Add your network IDs here

# Loop through each network ID
for network_id in "${NETWORK_IDS[@]}"
do
    # Make an HTTP GET request to retrieve JSON data for alerts history
    http --pretty=format GET "https://api.meraki.com/api/v1/networks/$network_id/alerts/history" "Authorization:Bearer $API_KEY" "Accept:application/json"  >> alerts.json
done
