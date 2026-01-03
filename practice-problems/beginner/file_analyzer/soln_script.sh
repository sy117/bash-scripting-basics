#! /bin/bash

file=$1

if [ $# -ne 1 ]
then
    echo "File path is needed as an argument"
    exit 1
fi

if [ ! -f "$file" ]
then
    echo "File does not exist"
    exit 1
fi

echo "Analyzing file: $file"
lines=$(wc -l < "$file")
words=$(wc -w < "$file")
chars=$(wc -c < "$file")

echo "Total number of lines: $lines"
echo "Total number of words: $words"
echo "Total number of characters: $chars"

# Example usage:
# ./soln_script.sh "$(pwd)/dummy.txt"
