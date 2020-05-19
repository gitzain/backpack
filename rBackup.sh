#!/bin/bash
 
#Desktop user data backup script



#Set these parameters
current_user=$USER
backup_location="/media/truecrypt1/user-data/$current_user"
exclude_hidden=".*"
exclude_this="Downloads"



#Todays date in ISO-8601 format:
DAY0=`date -I`
 
#Yesterdays date in ISO-8601 format:
DAY1=`date -I -d "1 day ago"`
 
#The source directory:
SRC="/home/$current_user/"
 
#The target directory:
TRG="$backup_location/$DAY0"
mkdir -p $TRG

#The link destination directory:
LNK="$backup_location/$DAY1"
 
#The rsync options:
OPT="-avh --delete --exclude=$exclude_hidden --exclude=$exclude_this --link-dest=$LNK"
 
#Execute the backup
rsync $OPT $SRC $TRG
