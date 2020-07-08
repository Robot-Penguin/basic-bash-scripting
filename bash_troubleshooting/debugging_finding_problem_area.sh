#!/bin/bash

if [[ -d $dir_name ]]; then
    if cd $dir_name; then
        rm *
    else
        echo "cannot cd to '$dir_name'" >&2
        exit 1
    fi
 # else
 #   echo "no such directory: '$dir_name'" >&2
 #   exit
fi

# One technique that can be used to isolate code is “commenting out” sections of a script