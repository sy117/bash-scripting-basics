# /bin/bash

HOSTS=("google.com" "8.8.8.8" "github.com" "stackoverflow.com" "leetcode.com" "localhost")
FORMAT="%-20s %-15s %-12s\n"

printf "\n$FORMAT" "HOST" "STATUS" "LATENCY(ms)"
printf "$FORMAT" "-------------------" "--------------" "------------"

OS=$(uname)
if [ "$OS" = "Darwin" ]; then
    TIMEOUT=2000    # macOS: -W is milliseconds
else
    TIMEOUT=2       # Linux: -W is seconds
fi

for host in "${HOSTS[@]}"; do
    output=$(ping -c 1 -W $TIMEOUT "$host" 2>/dev/null)

    if [ $? -eq 0 ]; then
        latency=$(echo "$output" | grep -o 'time=[0-9.]*' | cut -d= -f2)
        printf "$FORMAT" "$host" "UP" "$latency"
    else
        printf "$FORMAT" "$host" "DOWN" "N/A"
    fi
done

echo ""

# Example usage:
# chmod +x soln_script.sh
# ./soln_script.sh