#!/bin/bash

# async-parent: Asynchronous execution demo (parent)

echo "Parent: starting"

echo "Parent: Launching child script..."
exotica_asynchronous_execution_child.sh & 
pid=$!
echo "Parent: child (PID=$pid) launched."

echo "Parent: continuing..."
sleep 2

echo "Parent: pausing to wait for child to finish..."
wait $pid

echo "Parent: child is finished. continuing..."
echo "Parent: parent is done. Exiting."