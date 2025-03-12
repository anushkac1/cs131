# Directory Cleanup Tool

This shell tool allows you to clean up a specified directory by deleting files based on certain criteria like file type, size, age, and more. You can delete empty files, files older than a specific number of days, files of a particular type, or even all files in the directory. This tool helps in managing and maintaining your directory by removing unnecessary files.

## What this command does

This command performs various clean-up tasks in a specified directory by deleting files based on certain criteria. These criteria can include:
- Empty files
- Files older than a specified number of days
- Files larger than a specified size
- Files of a specific type (e.g., `.txt`, `.jpg`)
- All files in the directory

## Why/When this command is useful

- **File Management**: When working with large directories, it's essential to clean up old, empty, or unwanted files to save space and keep the directory organized.
- **Automation**: This command can be used in scripts to automate the clean-up process for temporary files or files that meet specific conditions.
- **Periodic Cleanup**: Use it to automate cleanup on a regular basis, such as clearing old log files or removing outdated documents.

## How you can use this command

You can use this command directly from the terminal with different options to specify what kind of files you'd like to delete. Here's the basic syntax:

```bash
./directory_cleanup [OPTIONS] <DIRECTORY>
