#!/bin/bash

# array-2: Use arrays to tally file owners

declare -A files file_group file_owner groups owners # Associative array

if [[ ! -d "$1" ]]; then # "$1" is the argument / 1st positinal_param
    echo "Usage: arrray-2 dir" >&2 # Checks to see that a valid directory name was passed as a positional parameter.
    exit    # If not, a usage message is displayed and the script exits with an exit status of 1.
fi 

for i in "$1"/*; do # Loop through the files in the directory.
    owner=$(stat -c %U "$i") # Using stat command get file owner and assign it to "owner" variable.
    group=$(stat -c %G "$i") # Using stat command get file group and assign it to "group" variable.
    files["$i"]="$i" # Put files in array "files"
    file_owner["$i"]=$owner # Put owner in array "file_owner"
    file_group["$i"]=$group # Put group in array "file_group"
    ((++owners[$owner]))    # total number of files belonging to the file owner and 
    ((++groups[$group]))     # group owner are incremented by one.
done

# List the collected files
{ for i in "${files[@]}"; do # The list of files is output.
    printf "%-40s %-10s %-10s\n" \
        "$i" ${file_owner["$i"]} ${file_group["$i"]}
done } | sort
echo

# These two loops are similar to the file list loop except that they use the 
# "${!array[@]}" expansion which expands into the list of array indexes rather than 
#the list of array elements.

# List owners
echo "File owners:"
{   for i in "${!owners[@]}"; do
    printf "%-10s: %5d files(s)\n" "$i" ${owners["$i"]}
done } | sort
echo

# List groups
echo "File group owners:"
{   for i in "${!groups[@]}"; do
    printf "%-10s: %5d file(s)\n" "$i" ${groups["$i"]}
done } | sort