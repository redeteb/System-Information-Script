#!/bin/bash

#my_ip=
#my_username=whoami
#free_cpu=
#free_memory=
#top_memory=
#top_cpu=
#network=


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
    echo "123"

elif [ "$choice" == "2" ]; then
    echo "whoami"

elif [ "$choice" == "3" ]; then
    echo "CPU"

fi
