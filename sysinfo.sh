#!/bin/bash

#Functions for each menu option
print_ipaddresses() {
    echo "123"
}

print_username() {
    echo "$(whoami)"
}

print_cpu() {
    echo "CPU"
}

print_memory() {
    echo "memory"
}

print_topmemory() {
    echo "top 5 memory"
}

print_topcpu() {
    echo "top 5 cpu"
}

print_network() {
    echo "network connectivity"
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


