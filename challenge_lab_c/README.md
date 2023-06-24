# **Skills Integration Demo: Log File Archiving and Extraction**

## Instructions

There has been suspicious activity on the system. In order to preserve log information, it will be necessary to archive the current files in `/var/log` ending with the `.log` extension. The files are to be saved to a file named `log.tar`, stored in the directory `~/archive`.

It has also been requested that the files that were archived be saved to a directory, `~/backup`.

## Objectives

1. Create an archive named `log.tar` that is stored in the `archive` directory located in the home directory.
2. Remove path names from the files that are archived.
3. Produce verbose output while archiving.
4. List the contents of the archive without extracting.
5. Extract the files to the directory `backup`.

## Solution

### Step 1: Create the necessary directories

```bash
mkdir ~/archive
mkdir ~/backup
```

### Step 2: Archive the log files

```bash
tar -cvf ~/archive/log.tar /var/log/*.log
```

Explanation:
- `tar -cvf` creates a new archive with verbose output.
- `~/archive/log.tar` is the path and name of the archive file.
- `/var/log/*.log` specifies the log files with the `.log` extension in the `/var/log` directory to be archived.

### Step 3: Remove path names from archived files

```bash
tar --transform='s|.*/||' -cvf ~/archive/log.tar /var/log/*.log
```

Explanation:
- `--transform='s|.*/||'` removes the leading path names from the archived files.

### Step 4: List the contents of the archive

```bash
tar --list -vf ~/archive/log.tar
```

Explanation:
- `--list` lists the contents of the archive.
- `-v` enables verbose output.
- `-f` specifies the filename of the archive.

## **Step 5: Extract the files to the backup directory**

```bash
tar --extract -vf ~/archive/log.tar -C ~/backup
```

Explanation:
- `--extract` extracts files from the archive.
- `-v` enables verbose output.
- `-f` specifies the filename of the archive.
- `-C` specifies the directory where the files will be extracted.

## **Step 6: Verify the extracted files**

```bash
ls ~/backup
```

This command lists the files in the `backup` directory to verify that the files have been successfully extracted.

That's it! You have successfully completed the tasks and achieved the objectives of archiving and extracting log files.

Remember to adjust the paths and filenames if necessary.

**Note:** Ensure that you have appropriate permissions to access the log files and create directories in the specified locations.
