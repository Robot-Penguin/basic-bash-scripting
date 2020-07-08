#!/bin/bash

# cd $dir_name
# rm * 

# There is nothing intrinsically wrong with these two lines, as long as the directory named
# in the variable, dir_name, exists. But what happens if it does not? In that case, the cd
# command fails and the script continues to the next line and deletes the files in the current
# working directory. 

# cd $dir_name && rm *

# This way, if the cd command fails, the rm command is not carried out. This is better, but
# still leaves open the possibility that the variable, dir_name, is unset or empty, which
# would result in the files in the user’s home directory being deleted.

# Delete files in directory $dir_name

dir_name=/var/www/html/bash/errors/test_dir

if [[ ! -d "$dir_name" ]]; then
echo "No such directory: '$dir_name'" >&2
exit 1
fi
if ! cd $dir_name; then
echo "Cannot cd to '$dir_name'" >&2
exit 1
fi
if ! rm *; then
echo "File deletion failed. Check results" >&2
exit 1
fi

# Here, we check both the name, to see that it is that of an existing directory, 
# and the success of the cd command. If either fails, a descriptive error message 
# is sent to standard errorband the script terminates with an exit status of one to indicate a failure.