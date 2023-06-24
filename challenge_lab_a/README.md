# Skills Integration Demo: User Management

In this Skills Integration Demo, we will showcase the integration of various skills by creating a Linux server user management system. The system will involve creating, modifying, and removing user accounts for different departments, setting up appropriate file permissions, and ensuring access restrictions.

## **Lab Setup**

1. Launch a Linux server or virtual machine with administrative privileges.
2. Open a terminal or SSH into the server to execute the commands.


## **Lab Procedure**

### Step 1: Creating Directories and Groups

Create directories for each department and corresponding groups:

```bash
sudo mkdir /Engineering
sudo mkdir /Sales
sudo mkdir /IS

sudo groupadd Engineering
sudo groupadd Sales
sudo groupadd IS
```

### Step 2: Creating Administrative Users

Create administrative users for each department:

```bash
sudo useradd -g Engineering -s /bin/bash admin-engineering
sudo useradd -g Sales -s /bin/bash admin-sales
sudo useradd -g IS -s /bin/bash admin-is
```

### Step 3: Creating Additional Users

Create two additional users for each department:

```bash
sudo useradd -g Engineering -s /bin/bash user1-engineering
sudo useradd -g Engineering -s /bin/bash user2-engineering

sudo useradd -g Sales -s /bin/bash user1-sales
sudo useradd -g Sales -s /bin/bash user2-sales

sudo useradd -g IS -s /bin/bash user1-is
sudo useradd -g IS -s /bin/bash user2-is
```

### Step 4: Setting Ownership and Permissions

Set ownership and group ownership for each department directory:

```bash
sudo chown admin-engineering /Engineering
sudo chgrp Engineering /Engineering

sudo chown admin-sales /Sales
sudo chgrp Sales /Sales

sudo chown admin-is /IS
sudo chgrp IS /IS
```

Set appropriate permissions on each department directory:

```bash
sudo chmod 770 /Engineering
sudo chmod 770 /Sales
sudo chmod 770 /IS
```

### Step 5: Configuring File Ownership and Permissions for Documents

Create a document in each department directory and set ownership and permissions:

```bash
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
```

### Step 6: Verifying Access Restrictions

Verify the access restrictions for the department directories and documents:

- Ensure that the department administrators have full access to their respective department directories and documents.
- Confirm that normal users in each department have read, write, and execute permissions on their respective department directories.
- Validate that the department directories and documents are not accessible to users/administrators from other departments.

---

```To ensure the appropriate access levels and restrictions for the department directories and documents, follow these steps:```

### **Ensuring Full Access for Department Administrators**

1. Change the ownership of each department directory to the respective department administrator:

   ```bash
   sudo chown admin-engineering /Engineering
   sudo chown admin-sales /Sales
   sudo chown admin-is /IS
   ```

2. Grant full access permissions to the department administrators:

   ```bash
   sudo chmod 700 /Engineering
   sudo chmod 700 /Sales
   sudo chmod 700 /IS
   ```

### Granting Read, Write, and Execute Permissions for Normal Users

1. Set the group ownership of each department directory to the respective department group:

   ```bash
   sudo chgrp Engineering /Engineering
   sudo chgrp Sales /Sales
   sudo chgrp IS /IS
   ```

2. Grant read, write, and execute permissions to the department group:

   ```bash
   sudo chmod 770 /Engineering
   sudo chmod 770 /Sales
   sudo chmod 770 /IS
   ```

### **Restricting Access to Other Departments**

1. Check the group ownership of the department directories:

   ```bash
   ls -ld /Engineering
   ls -ld /Sales
   ls -ld /IS
   ```

   Ensure that each directory shows the respective department group ownership.

2. Confirm that the permissions on the department directories are restricted to the department group:

   ```bash
   ls -l /Engineering
   ls -l /Sales
   ls -l /IS
   ```

   Verify that only the department group has read, write, and execute permissions.

3. Validate that the department documents have the correct ownership and permissions:

   ```bash
   ls -l /Engineering/document.txt
   ls -l /Sales/document.txt
   ls -l /IS/document.txt
   ```

   Confirm that the department administrators have ownership and that the department group has read and write permissions. Other users should not have any permissions.

By following these steps, you can ensure that department administrators have full access, normal users have the appropriate permissions, and access to directories and documents is restricted to the respective departments.

