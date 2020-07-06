#!/bin/bash

# read-ifs (Internal Field Separator): read fields from a file

FILE=/etc/passwd

read -p "Enter a username ->" user_name # -> set entered username to user_name variable.

file_info=$(grep "^$user_name:" $FILE) # The regular expression used by grep 
                                        # assures that the username will only match a 
                                        # single line in the /etc/passwd file.
if [ -n "$file_info" ]; then
    IFS=":" read user pw uid gid name home shell <<< "$file_info"
    echo "User =    '$user'"
    echo "UID =    '$uid'"
    echo "GID =    '$gid'"
    echo "Full Name =  '$name'"
    echo "Home Dir. =   '$home'"
    echo "Shell =   '$shell'"
else
    echo "No such user '$user_name'" >&2
    exit 1
fi