# Skills Integration Demo: User Management Script

This script automates the user management tasks, including creating a new user and group, setting passwords, and managing directory permissions. It prompts the user to enter a unique username and group name, ensuring that duplicates are not created.

## Prerequisites

- A Linux-based system (e.g., Ubuntu, CentOS) or access to a Linux virtual machine.
- Basic knowledge of the Linux command line.

## Instructions

1. Make the script executable by running the following command in the terminal:

   ```bash
   chmod +x user_management.sh
   ```

2. Execute the script by running the following command:

   ```bash
   ./user_management.sh
   ```

   The script will guide you through the process and prompt for necessary inputs.

3. Enter a unique username for the new user when prompted. The script will check if the username already exists. If it does, it will prompt you to enter a different username.

4. Enter a group name for the new group when prompted. The script will check if the group name already exists. If it does, it will prompt you to enter a different group name.

5. The script will create the new group using the provided group name.

6. The script will create the new user using the provided username, with a Bash login shell and belonging to the created group.

7. Set a password for the newly created user when prompted.

8. The script will create a directory at the root ("/") of the file system with the same name as the user.

9. The ownership of the directory will be set to the user and group created earlier.

10. The permissions of the directory will be set to allow full control for the owner and the group.

11. Only the owner of a file can delete it from the directory.

12. Once all the steps are completed, the script will display a success message.

Note: The script assumes that the user executing the script has appropriate permissions to create users and groups on the system.

Feel free to modify the script and incorporate it into your system administration workflows.

Please let me