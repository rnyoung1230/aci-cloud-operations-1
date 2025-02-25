#!/bin/bash

#set -e # Enable error handling

#echo "Starting script"

# This command will fail, and the script will immediately exit
#ls non_existent_directory

# This line will not be reached
#echo "Script continues after ls command"

# Attempt to remove non-existent file
rm non_existent_file

# Check the exit code and perform custom error handling
if [ $? -ne 0 ]
then
   echo "Error: Failed to remove the file."
   # Add custom error handling actions here
else
   echo "File removed successfully"
fi

# Continue running script
echo "Script continues running after error handling"
