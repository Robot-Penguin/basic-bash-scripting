#!/bin/bash

# One tracing method involves placing informative messages in a script 
# that display the location of execution.

echo "Preparing to delete files" >&2
if [[ -d $dir_name ]]; then
    if cd $dir_name; then
echo "Deleting files" >&2
        rm *
    else
        echo "Cannot cd to '$dir_name'" >&2
        exit 1
    fi
else
    echo "No such directory: '$dir_name'" >&2
    exit
fi
echo "file deletion complete" >&2