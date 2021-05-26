#!/bin/bash

# This bash script is an alternative to using GitHub's Large File Storage service. This script watches for any new content added to the TARGET directory and its subdirectories, then finds all files in the TARGET directory and its subdirectories that are over 100Mb and adds them to the gitignore file of the TARGET directory. On Ubuntu, the script can be set to run at startup using the Startup Applications Preferences.
# To use:
# 1. Replace the TARGET path below (looks like "TARGET=~/Documents/GrApH_AI/Code") with the path to your git repo
# 2. Save the file
# 3. Grant execution permissions by opening terminal, navigating to the directory containing this script, and using the command "chmod u+x add_large_files_to_gitignore.sh"
# 4. Search your applications for the Startup Applications Preferences tool and follow the prompts to add this script as an application to run at startup.  
# 5. If you need to use the script before you restart your computer, use terminal to navigate to the directory where this bash script is stored and execute the following commmand: 
# ./add_large_files_to_gitignore.sh

TARGET=~/Documents/GrApH_AI/Public # tell the program which folder to watch. 

inotifywait -m -e create -e moved_to -e close_write --exclude ".gitignore" --recursive $TARGET\
        | while read FILENAME
                do
                        echo Detected new content, adding any files over 100M to gitignore
                        find $TARGET/ -size +99M -printf "%P\n" > $TARGET/gitignore_files/large_files.gitignore
                        cat $TARGET/gitignore_files/* > $TARGET/.gitignore
                done
