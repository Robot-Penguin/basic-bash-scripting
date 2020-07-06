#!/bin/bash

# read-secret: input a secret passphrase

if read -t 10 -sp "Enter secret passphrase ->" secret_pass ; then #secret passphrase & waits 10 seconds for input.
    echo -e "\nSecret passphrase = '$secret_pass'"
else
    echo -e "\nInput time out" >&2
    exit 1
fi