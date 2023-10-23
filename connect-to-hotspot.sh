#!/bin/bash

# Replace Your_SSID and Your_Password with your Wi-Fi credentials
SSID="Your_SSID"
PASSWORD="Your_Password"

# Check if already connected to the desired network
CURRENT_SSID=$(networksetup -getairportnetwork en0 | awk -F": " '{print $2}')

if [ "$CURRENT_SSID" != "$SSID" ]; then
  # Try to connect to the desired network
  networksetup -setairportnetwork en0 "$SSID" "$PASSWORD"
fi
