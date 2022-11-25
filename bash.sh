#!/bin/bash

####################################

#

# BackupScript

#

####################################



# What to backup

backup_files="/home/mariia/Files"



# Where to backup to

dest="/home/mariia/BackupFolder"



# Create archive filename.

day=$(date +%A)

hostname=$(hostname -s)

archive_file="$hostname-$day.tgz"



# Print start message.

echo "Backing up $backup_files to $dest/$BackupFolder"

date

echo



# Backup the files using tar.

tar czf $dest/$archive_file $backup_files



# Print end message.

echo

echo "Backup finished"

date



# Long listing of files in $dest to check file sizes.

ls -lh $dest
