#!/bin/bash

function gdsync() {
while :
do
clear
echo "Welcome to gdsync"
echo "1.List files/folders present in google drive"
echo "2.Upload a file/folder"
echo "3.Remove file/folder"
echo "4.Enable regular backup for file/folder"
echo "5.Quit"
read -p "Enter your choice: " usr_cmd
clear

case $usr_cmd in
1)echo "Files/Folders in Google Drive:"
tree google-drive
;;
2)read -p "Enter file/folder name to be uploaded: " upname
cp -r $upname google-drive
echo "Upload Successful"
;;
3)read -p "Enter file/folder name to be removed: " remname
find ./google-drive -name $remname -exec rm -r {} +
echo "Removed Successfully"
;;
4)read -p "Enter file/folder name to enable backup: " fname
read -p "Enter the time for daily backup (HH MM): " hour min
echo "$min $hour * * * find ./google-drive -name $fname -exec rm -r {} +; cp -r $fname google-drive">>mycrontab
crontab mycrontab 
rm mycrontab
echo "Backup successfully enabled !"
;;
5)break;;
*)echo "invalid option";;
esac;

read -p "Press 5 to quit,anything else to return to main menu  " confirm_exit
if [ $confirm_exit -eq 5]
then break
fi
done
}
