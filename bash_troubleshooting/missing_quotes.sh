#!/bin/bash
# trouble: script to demonstrate common errors
number=1
if [ $number = 1 ]; then
# remove the trailing quote from the argument following the first echo command
echo "Number is equal to 1. 
else
echo "Number is not equal to 1."
fi

# line 10: unexpected EOF while looking for matching `"'
# line 13: syntax error: unexpected end of file