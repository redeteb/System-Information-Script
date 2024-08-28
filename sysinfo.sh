#!/bin/bash

#Functions for each menu option
print_ipaddresses() {
    publicip=$(curl -s ifconfig.me)
    privateip=$(hostname -i)
    echo "Your Public Ip is ($publicip) and your Private IP is ($privateip)."
}

print_username() {
    echo "Your current user is $(whoami)."
}

print_cpu() {
   lscpu | egrep 'CPU\(s\):'
}

print_memory() {
    grep MemTotal /proc/meminfo
}

print_topmemory() {
    top -b -o +%MEM | head -n 12
}

print_topcpu() {
    top -b -o +%CPU | head -n 12
}

print_network() {
    echo "Enter a website or IP address:"
    read website

    if ping -c 4 "$website" &> /dev/null; then
        echo "Connection was successful."
    else
        echo "Connection has failed."
    fi
}


ask_choice() {
    echo "What would you like to check?
    (1) My Public and Private Addresses
    (2) My Username
    (3) CPU Information
    (4) Memory Information
    (5) Top 5 Memory Processes
    (6) Top 5 CPU Processes
    (7) Network Connectivity
    (8) Exit"

    read choice
}


#Function to start the script

ask_choice


while [ "$choice" != "8" ]; do

    if [ "$choice" == "1" ]; then
        print_ipaddresses

    elif [ "$choice" == "2" ]; then
        print_username

    elif [ "$choice" == "3" ]; then
        print_cpu

    elif [ "$choice" == "4" ]; then
        print_memory

    elif [ "$choice" == "5" ]; then
        print_topmemory

    elif [ "$choice" == "6" ]; then
        print_topcpu

    elif [ "$choice" == "7" ]; then
        print_network
    fi

    ask_choice
done 

echo "Exited."
