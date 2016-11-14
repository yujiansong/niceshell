#!/bin/bash
#Program
# User inputs his first name and last name. Program shows his full name.
#History
#2016/11/14 yujiansong 

read -p "Plaese input your first name:  " -t 30 firstname	

read -p "Plaese input your last name:  " -t 30 lastname

echo -e "\nYour full name is: $firstname $lastname"
