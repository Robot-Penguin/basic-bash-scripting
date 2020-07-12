#!/bin/bash

# ul-param: demonstrate case conversion via parameter expansion

if [[ $1 ]]; then
    echo ${1,,} # all lowercase.
    echo ${1,}  # changing only the first character to lowercase.
    echo ${1^^} # all uppercase letters.
    echo ${1^}  # only the first character to uppercase (capitalization).
fi