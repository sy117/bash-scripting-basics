#! /bin/bash


prefix=$1

if [ -z "$prefix" ]
then
    env | sort
else
    env | sort | grep "^$prefix"
fi

# Example usage:
# ./soln_script.sh          
# ./soln_script.sh APP_
# ./soln_script.sh PATH
