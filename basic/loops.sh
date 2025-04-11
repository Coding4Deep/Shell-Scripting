#!/bin/bash

#printing all the files in  dir

# cd /home/vagrant || exit 1
# output=$(ls)

# for i in $output; do
#    if [ -f "$i" ]; then
#        echo "file: $i"
#    else [ -d "$i" ]
#        echo "dir : $i"
#    fi
# done
     


PS3="Choose a value: "  

select value in monday tuesday wednesday EXIT
do
  case $value in
    monday)
      echo "Today is $value"
      ;;
    tuesday)
      echo "Today is $value"
      ;;
    wednesday)
      echo "Today is $value"
      ;;
    EXIT)
      break
      ;;
    *)
      echo "Invalid Option!"
      ;;
  esac
done
