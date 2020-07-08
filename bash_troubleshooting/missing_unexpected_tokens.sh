#!/bin/bash
# trouble: script to demonstrate common errors
number=1
if [ $number = 1 ] then # remove the semicolon after the test in the if command:
echo "Number is equal to 1."
else
echo "Number is not equal to 1."
fi


# line 6: syntax error near unexpected token `else'
# line 6: `else'