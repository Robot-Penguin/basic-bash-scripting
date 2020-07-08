# Test Cases
# To perform useful testing, it's important to develop and apply good test cases.

# 1. dir_name contains the name of an existing directory
# 2. dir_name contains the name of a non-existent directory
# 3. dir_name is empty

if [[ -d $dir_name ]]; then
    if cd $dir_name; then
        echo rm *   # TESTING ---> stubs / marker
                    # placing an echo command just before the rm command to allow
                    # the command and its expanded argument list to be displayed, 
                    # rather than the command actually being executed
    else
        echo "cannot cd to '$dir_name'" >&2
        exit 1
    fi
else
    echo "no such directory: '$dir_name'" >&2
    exit 1
fi
exit #TESTING ---> Stubs / marker