#!/bin/bash

# case4-1: test a character

# The script works for the most part, but fails if a character matches more than one of the
# POSIX characters classes. For example, the character "a" is both lower case and alphabetic,
# as well as a hexadecimal digit. In bash prior to version 4.0 there was no way for
# case to match more than one test. Modern versions of bash, add the “;;&” notation to terminate each action.

read -n 1 -p " Type a character > "
echo
case $REPLY in
    [[:upper:]])    echo "'$REPLY' is upper case." ;;&
    [[:lower:]])    echo "'$REPLY' is lower case." ;;&
    [[:alpha:]])    echo "'$REPLY' is a alphabetic." ;;&
    [[:digit:]])    echo "'$REPLY' is a digit." ;;&
    [[:graph:]])    echo "'$REPLY' is a visible character." ;;&
    [[:punct:]])    echo "'$REPLY' is a punctuation symbol." ;;&
    [[:space:]])    echo "'$REPLY' is a whitespace character." ;;&
    [[:xdigit:]])   echo "'$REPLY' is a hexadecimal digit." ;;
esac