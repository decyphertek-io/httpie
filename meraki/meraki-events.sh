#!/bin/bash

# Define your Meraki API key
API_KEY="API-KEY"

# Define the list of network IDs
NETWORK_IDS=("NETID-1" "NETID-2" "NETID-3" "NETID-4") 

# Define the list of product types
PRODUCT_TYPES=("appliance" "camera" "cellularGateway" "switch" "systemsManager" "wireless")

# Loop through each network ID
for network_id in "${NETWORK_IDS[@]}"
do
    # Loop through each product type
    for product_type in "${PRODUCT_TYPES[@]}"
    do
        # Make an HTTP GET request to retrieve JSON data
        http --pretty=format GET "https://api.meraki.com/api/v1/networks/$network_id/events?productType=$product_type" "Authorization:Bearer $API_KEY" "Accept:application/json" >> events.json
    done

done