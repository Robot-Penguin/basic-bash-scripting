#!/bin/bash

# while-read: read lines from a file

while read distro version release; do 
    print "Distro: %s\tVersion: %s\tReleased: \%s\n" \
        $distro \
        $version \
        $release
done < distros.txt