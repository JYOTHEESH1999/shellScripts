# About the script
This shell script does the following

a)The shell script finder.sh as described below:

Accepts the following runtime arguments: the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched within these files, referred to below as searchstr

Exits with return value 1 error and print statements if any of the parameters above were not specified

Exits with return value 1 error and print statements if filesdir does not represent a directory on the filesystem

Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory and all subdirectories and Y is the number of matching lines found in respective files, where a matching line refers to a line which contains searchstr (and may also contain additional content).

Example invocation:

       finder.sh /tmp/aesd/assignment1 linux
b)The shell script writer.sh as described below

Accepts the following arguments: the first argument is a full path to a file (including filename) on the filesystem, referred to below as writefile; the second argument is a text string which will be written within this file, referred to below as writestr

Exits with value 1 error and print statements if any of the arguments above were not specified

Creates a new file with name and path writefile with content writestr, overwriting any existing file and creating the path if it doesn’t exist. Exits with value 1 and error print statement if the file could not be created.

Example:

       writer.sh /tmp/aesd/assignment1/sample.txt ios

Creates file:

    /tmp/aesd/assignment1/sample.txt

            With content:

            ios

c) The shell script finder-test.sh provided with your assignment github repository to test your implementations.  This script:

Accepts the following arguments: the first argument is the number of files to write numfiles; the second argument is the string to write to each file writestr

Defaults to use numfiles 10 and writestr “AELD_IS_FUN” if respective arguments are not specified.

Creates an empty directory /tmp/aeld-data

Loops to create numfiles files in directory /tmp/aeld-data using the writer.sh script, with writefile first argument name /tmp/aeld-data/usernameX.txt where X is a number from 1 to numfiles, username is the username found in conf/username.txt and writestr is passed as the second argument.

Runs finder.sh script with filesdir set to /tmp/aeld-data and searchstr set to writestr

Compares the output of the finder script with expected output “The number of files are numfiles and the number of matching lines are numfiles”. Prints “success” on match or “error” on mismatch.

