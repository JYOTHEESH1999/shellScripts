# About the script
This shell script does the following

1.Accepts the following runtime arguments: the first argument is a path to a directory on the filesystem, referred to below as filesdir; the second argument is a text string which will be searched within these files, referred to below as searchstr

2.Exits with return value 1 error and print statements if any of the parameters above were not specified

3.Exits with return value 1 error and print statements if filesdir does not represent a directory on the filesystem

4.Prints a message "The number of files are X and the number of matching lines are Y" where X is the number of files in the directory and all subdirectories and Y is the number of 
matching lines found in respective files, where a matching line refers to a line which contains searchstr (and may also contain additional content).

Example invocation:
$ finder.sh /tmp/aesd/assignment1 linux
