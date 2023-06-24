# **Skills Integration Demo: Pipes, Redirection, and REGEX**


## **Case Scenario**

A staff member has requested a list of the names of the services recognized by the current Linux image. A file named /etc/services has been located that contains the pertinent information; however it is not organized to easily determine all of the services.

## **Instructions**


Using a combination of pipes, redirects and control statements, produce output that contains only the service names. The entire task must be accomplished without using any intermediary files. Each service should only be listed once and captured to a file named uniqueservices.txt, located in the home directory. Remove any blank lines or lines that are deemed to be comments.

There could be more than one possible solution for obtaining the desired results.

## __Objectives__

Extract all the service names from the file.
Sort the names alphabetically removing any duplicates.
Remove any blank lines or lines that do not begin with a letter of the alphabet.
Capture the final output to a file named uniqueservices.txt.
Count the lines in the file using a conditional command that is only executed if the previous combined commands are successful.

## Step 1: Extract service names from the file
```bash
grep -E '^[a-zA-Z]' /etc/services | awk '{print $1}' > uniqueservices.txt
```

## Step 2: Sort the names alphabetically and remove duplicates

```bash
sort -u uniqueservices.txt -o uniqueservices.txt 
```


## Step 3: Remove blank lines

```bash
sed -i '/^$/d' uniqueservices.txt
```

## Step 4: Count the lines in the file

```bash
if [ -s uniqueservices.txt ]; then
    wc -l uniqueservices.txt
else
    echo "No services found."
fi
```

Save the above code in a file named `extract_services.sh` or any desired name with the `.sh` extension. Make the script executable by running the following command:

```bash
chmod +x extract_services.sh
```

To run the script, execute the following command:

```bash
./extract_services.sh
```

The script will perform the extraction of service names, sorting, removing duplicates and blank lines, and display the count of lines in the `uniqueservices.txt` file.

---
Please ensure that you have appropriate permissions to access the `/etc/services` file and create the `uniqueservices.txt` file in the current directory.

Feel free to adjust the script or reach out if you have any further questions or need additional assistance.