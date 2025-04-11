#!/bin/bash

# PS3="Choose a fruit: "

# select fruit in Apple Banana Orange Exit; do 
#   case $fruit in 
#     Apple) echo "You chose Apple";; 
#     Banana) echo "You chose Banana";; 
#     Orange) echo "You chose Orange";; 
#     Exit) 
#       echo "Goodbye!"; 
#       break
#       ;; 
#     *) echo "Invalid option, try again!";; 
#   esac 
# done
#!/bin/bash

while true; do
    echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
    sleep 2  # Wait for 2 seconds before the next check
done
