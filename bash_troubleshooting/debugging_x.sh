#!/bin/bash -x

# we can activate tracing for the entire script by adding the -x option to the first line:

number=1
if [ $number = 1 ]; then
echo "Number is equal to 1."
else
echo "Number is not equal to 1."
fi

# With tracing enabled, we see the commands performed with expansions applied. The
# leading plus signs indicate the display of the trace to distinguish them from lines of regular
# output. The plus sign is the default character for trace output. It is contained in the
# PS4 (prompt string 4) shell variable. The contents of this variable can be adjusted to
# make the prompt more useful. Here, we modify the contents of the variable to include the
# current line number in the script where the trace is performed. Note that single quotes are
# required to prevent expansion until the prompt is actually used:

# [root@localhost ~]$ export PS4='$LINENO + '
# [root@localhost ~]$ trouble
# 5 + number=1
# 7 + '[' 1 = 1 ']'
# 8 + echo 'Number is equal to 1.'
# Number is equal to 1.