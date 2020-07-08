#!/bin/bash
# trouble: script to demonstrate common errors
number=             # change the value of number to an empty variable
if [ $number = 1 ]; then
echo "Number is equal to 1."
else
echo "Number is not equal to 1."
fi

# line 4: [: =: unary operator expected
# Number is not equal to 1.