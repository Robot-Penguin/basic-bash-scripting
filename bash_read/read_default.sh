#!/bin/bash

# read-default: supply a default value if user presses Enter key.

read -e -p "What is your name? " -i $USER # Display the default string $USER
echo "You answered: '$REPLY'"