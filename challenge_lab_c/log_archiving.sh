#!/bin/bash

# Step 1: Create the necessary directories
mkdir ~/archive
mkdir ~/backup

# Step 2: Archive the log files
tar -cvf ~/archive/log.tar /var/log/*.log

# Step 3: Remove path names from archived files
tar --transform='s|.*/||' -cvf ~/archive/log.tar /var/log/*.log

# Step 4: List the contents of the archive
tar --list -vf ~/archive/log.tar

# Step 5: Extract the files to the backup directory
tar --extract -vf ~/archive/log.tar -C ~/backup

# Step 6: Verify the extracted files
ls ~/backup
