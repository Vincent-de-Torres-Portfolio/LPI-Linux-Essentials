#!/bin/bash

# Set department directories and groups
sudo mkdir /Engineering
sudo mkdir /Sales
sudo mkdir /IS

sudo groupadd Engineering
sudo groupadd Sales
sudo groupadd IS

# Create administrative users
sudo useradd -g Engineering -s /bin/bash admin-engineering
sudo useradd -g Sales -s /bin/bash admin-sales
sudo useradd -g IS -s /bin/bash admin-is

# Create additional users
sudo useradd -g Engineering -s /bin/bash user1-engineering
sudo useradd -g Engineering -s /bin/bash user2-engineering

sudo useradd -g Sales -s /bin/bash user1-sales
sudo useradd -g Sales -s /bin/bash user2-sales

sudo useradd -g IS -s /bin/bash user1-is
sudo useradd -g IS -s /bin/bash user2-is

# Set ownership and permissions for department directories
sudo chown admin-engineering /Engineering
sudo chgrp Engineering /Engineering
sudo chmod 700 /Engineering

sudo chown admin-sales /Sales
sudo chgrp Sales /Sales
sudo chmod 700 /Sales

sudo chown admin-is /IS
sudo chgrp IS /IS
sudo chmod 700 /IS

# Set group ownership and permissions for department directories
sudo chgrp Engineering /Engineering
sudo chgrp Sales /Sales
sudo chgrp IS /IS
sudo chmod 770 /Engineering
sudo chmod 770 /Sales
sudo chmod 770 /IS

# Create and configure department documents
sudo touch /Engineering/document.txt
sudo chown admin-engineering /Engineering/document.txt
sudo chgrp Engineering /Engineering/document.txt
sudo chmod 660 /Engineering/document.txt

sudo touch /Sales/document.txt
sudo chown admin-sales /Sales/document.txt
sudo chgrp Sales /Sales/document.txt
sudo chmod 660 /Sales/document.txt

sudo touch /IS/document.txt
sudo chown admin-is /IS/document.txt
sudo chgrp IS /IS/document.txt
sudo chmod 660 /IS/document.txt
