#!/bin/bash

# posit-param: script to display all arguments

count=1

while [[ $# -gt 0 ]]; do
    echo "Arguments $count = $1"
    count=$((count + 1))
    shift 
done