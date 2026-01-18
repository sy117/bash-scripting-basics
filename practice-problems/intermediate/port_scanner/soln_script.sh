#! /bin/bash

PORT=$1

if [ $# -ne 1 ]
then 
    echo "Usage: $0 <PORT>"
    exit 1
fi

PID=$(lsof -t -i :$PORT | head -n 1) # more than one process can use the same port

if [ -z "$PID" ]
then
    echo "No process found using port $PORT"
    exit 1
fi

PROCESS=$(ps -p $PID -o comm=)
USER=$(ps -p $PID -o user=)

echo "Process using port $PORT:"
echo "PID: $PID"
echo "Process: $PROCESS"
echo "User: $USER"


# Example usage:
# ./soln_script.sh 8080