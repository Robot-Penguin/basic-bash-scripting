#!/bin/bash

# trouble: script to demonstrate common errors

number=1

set -x # Turn on tracing
if [ $number = 1 ]; then
echo "Number is equal to 1."
else
echo "Number is not equal to 1."
fi
set +x # Turn off tracing

# We use the set command with the -x option to activate tracing and the +x option to
# deactivate tracing. This technique can be used to examine 
# multiple portions of a troublesome script.