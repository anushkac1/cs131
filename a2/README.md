# Directory Cleanup Tool

This command script helps you delete certain types of files from your directory. However, the important thing is that the script allows users to easily delete files of certain types, ages, sizes, etc., without having to manually select the files they want to delete or write out their specific requirements. It can be executed by the "directory_cleanup" command and is very useful to numerous users! 

## What does this command do? 

This command helps users clean up specified types of files within a certain directory by deleting files based on certain criteria. 
The criteria can be any of the following: 
- All empty files
- Files older than a specified number of days (ex: 30 days)
- Files larger than a specified size (ex: 100M)
- Files of a specific type (ex: txt files)
- All files in the directory
Note: you can also dp -h to get the help directory for this command to show the user how to use it!

## Why/When is this command useful? 

- **File Management**: Sometimes, when you have directories with lots of files, you want to be able to get rid of files you haven't used in a while or are empty and useless or delete all of them to start over. For whatever your use case is, this command helps you keep your directories organized and clean and save space! 
- **Automation**: This command is useful to be used within other scripts if you want to automate the cleanup process without having to start from scratch with rudamentary specifics. 
- **Periodic Cleanup**: Finally, you can incorporate this command to automate a cleanup regularly, such as clearing old log files or removing outdated documents every now and then.

- **In Short**: This command can make the life of a user a lot easier by making it faster to clean up directories and easier to stay organized/save space. 

## How do you use this command? 
Use this command directly within your terminal with different options to specify what kind of files you'd like to delete. 
Here's the basic syntax:

```bash
./directory_cleanup [OPTIONS] <DIRECTORY>
