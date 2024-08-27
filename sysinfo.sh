#!/bin/bash

ask_choice() {
    echo "What would you like to check?
    (1) My Public and Private Addresses
    (2) My Username
    (3) Free CPU Amount
    (4) Free Memory Amount
    (5) Top 5 Memory Processes
    (6) Top 5 CPU Processes
    (7) Network Connectivity
    (8) Exit"
    read choice
}

print_ipadresses() {
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



echo "What would you like to check?
(1) My Public and Private Adresses
(2) My Username
(3) Free CPU Amount
(4) Free Memory Amount
(5) Top 5 Memory Processes
(6) Top 5 CPU Processes
(7) Network Conectivity
(8) leave"

read choice

if [ "$choice" == "8" ]; then
    exit

elif [ "$choice" == "1" ]; then
    print_ipadresses

elif [ "$choice" == "2" ]; then
    print_username

elif [ "$choice" == "3" ]; then
    print_CPU

fi
