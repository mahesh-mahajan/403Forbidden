#!/bin/bash
dir=/home/somevhostdomain.com/htdocs/; 
while true; do 
# the exit case when we get to the top level directory /
if [ -z "$dir" -o "$dir" = "/" ]; then 
    break; 
fi; 
echo chmodding o+x $dir; 
# make the directory exectuable (openable) by others
chmod o+x $dir; 
# go 'up' a directory
dir=`dirname $dir`; 
done
