#!/bin/bash

# Function to evaluate security level of ports
evaluate_port() {
    port=$1

    if [[ $port -eq 22 || $port -eq 443 ]]; then
        echo "Port $port: Secure protocol detected."
    elif [[ $port -eq 21 || $port -eq 23 || $port -eq 80 ]]; then
        echo "Port $port: WARNING - Insecure plaintext protocol."
    else
        echo "Port $port: Unrecognized port."
    fi
}

# Loop through given ports
for port in 21 22 80 443 8080
do
    evaluate_port "$port"
done