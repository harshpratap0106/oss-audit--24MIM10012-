
#!/bin/bash
# Script 4: Log File Analyzer
# Author: Harsh Pratap Singh Parihar
# Purpose: Scans a specified log file line-by-line for a keyword and prints a summary.
# Usage: sudo ./script4.sh /var/log/syslog "error"


# Store the first command-line argument as the log file path
LOGFILE=$1

# Store second argument as keyword; default to "error" if not provided
KEYWORD=${2:-"error"}

# Initialize counter to count matching lines
COUNT=0

# Loop until a valid, non-empty file is provided
# -z checks if LOGFILE is empty
# -f checks if file exists
# -s checks if file is not empty
while [ -z "$LOGFILE" ] || [ ! -f "$LOGFILE" ] || [ ! -s "$LOGFILE" ]; do
    echo "Warning: File not provided, does not exist, or is empty."
    
    # Prompt user to enter a correct log file path
    read -p "Enter a valid log file path: " LOGFILE
done

# Display what file and keyword are being analyzed
echo "Analyzing $LOGFILE for keyword '$KEYWORD'..."

# Inform user that analysis is starting
echo "Starting analysis..."

# Read the file line-by-line
# IFS= prevents trimming of spaces
# -r prevents backslash interpretation
while IFS= read -r LINE; do
    
    # Check if the current line contains the keyword (case-insensitive)
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        
        # Increment counter if match is found
        COUNT=$((COUNT + 1))
    fi

# Feed the file into the loop
done < "$LOGFILE"

# Print separator line
echo "--------------------------------------------------"

# Display total count of matching lines
echo "Result: '$KEYWORD' found $COUNT times"

# Print separator line
echo "--------------------------------------------------"

# Inform user about displaying last matches
echo "Last 5 matching lines:"

# Store all matching lines using grep (case-insensitive)
MATCHES=$(grep -i "$KEYWORD" "$LOGFILE")

# Check if no matches were found
if [ -z "$MATCHES" ]; then
    
    # Inform user if no matches exist
    echo "No matching lines found."
else
    
    # Print last 5 matching lines using tail
    echo "$MATCHES" | tail -n 5
fi

# Indicate completion of analysis
echo "Analysis complete."

# Final separator
echo "--------------------------------------------------"