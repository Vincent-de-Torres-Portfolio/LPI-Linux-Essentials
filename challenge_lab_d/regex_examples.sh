#!/bin/bash

# Step 1: Extract service names from the file
grep -E '^[a-zA-Z]' /etc/services | awk '{print $1}' > uniqueservices.txt

# Step 2: Sort the names alphabetically and remove duplicates
sort -u uniqueservices.txt -o uniqueservices.txt

# Step 3: Remove blank lines
sed -i '/^$/d' uniqueservices.txt

# Step 4: Count the lines in the file
if [ -s uniqueservices.txt ]; then
    wc -l uniqueservices.txt
else
    echo "No services found."
fi
