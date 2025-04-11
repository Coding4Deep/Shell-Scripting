# Write a shell script to check to see if the file "file_path" exists.
# If it does exist, display "file_path passwords are enabled."
# Next, check to see if you can write to the file.
# If you can, display "You have permissions to edit "file_path.""
# If you cannot, display "You do NOT have permissions to edit "file_path.""

 FILE=$1

 if [ -e "$FILE" ]
 then
	 echo " file exist "
         
         if [ -w "$FILE" ]
	 then
	     echo " you have permission to write on file "
         else 
             echo " you ant write on that file"
	 fi

 else 
     echo "file dont exist"
 fi     


