#!/bin/bash

show_recon() {
    echo "Reconnaissance Tools: Nmap, Wireshark, Ping."
}

show_exploit() {
    echo "Exploitation Tools: Metasploit, SQLmap."
}

show_reporting() {
    echo "Reporting Tools: Dradis, KeepNote."
}

# Infinite menu loop
while :
do
    echo ""
    echo "Choose a category:"
    echo "1) Recon"
    echo "2) Exploit"
    echo "3) Reporting"
    echo "4) Exit"
    read -p "Enter choice: " choice

    if [[ $choice -eq 1 ]]; then
        show_recon
    elif [[ $choice -eq 2 ]]; then
        show_exploit
    elif [[ $choice -eq 3 ]]; then
        show_reporting
    elif [[ $choice -eq 4 ]]; then
        echo "Exiting guide."
        break
    else
        echo "Invalid option, try again."
    fi
done