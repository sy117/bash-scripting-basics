#! /bin/bash

# stdout => 1
# stderr => 2
# stdin

# >> => append to file
# > => overwrite file

# find /etc -type f 2> /dev/null => only stdout
# find /etc -type f > /dev/null => only stderr
# find /etc -type f &> output.txt => both stdout and stderr
# find /etc -type f 1> find_results.txt 2>find_errors.txt => both stdout and stderr



# stdin example

echo "Enter your name: "
read name
echo "Your name is : $name"