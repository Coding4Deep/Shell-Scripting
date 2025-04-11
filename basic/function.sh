#!/bin/bash 

#Simple Greeting Function
greet() {
  echo "Hello, $1!"
}
greet "DevOps Champ"

#With Local Variables
print_file_count() {
  local count=$(ls | wc -l)
  echo "Number of files: $count"
}
print_file_count


#Return Values
add() {
  local sum=$(( $1 + $2 ))
  echo $sum
}
result=$(add 10 20)
echo "Sum is $result"


#Call a Function Multiple Times
say_hello() {
  echo "Hello!"
}
for i in {1..3}; do
  say_hello
done


#Recursion in Bash
factorial() {
  local n=$1
  if [ "$n" -le 1 ]; then
    echo 1
  else
    local temp=$((n - 1))
    local result=$(factorial $temp)
    echo $((n * result))
  fi     
}
read -p   "enter the value you wanna get factorial :"   number
echo "Factorial of 5 is: $(factorial $number)"


#Call by Value (Default in Bash)
modify_value() {
  local var=$1
  echo "before changed Inside function: $var"
  var="Changed"
  echo "Inside function: $var"
}
myVar="Original"
modify_value "$myVar"
echo "Outside function: $myVar"

#Call by Reference 
#METHOD 1
modify_value() {
  local -n ref=$1
  ref=$2
}

modify_value var 100
echo "The value of var is now: $var"

#METHOD 2
modify_value() {
  eval $1=\$2    #eval executes a string as Bash code
}
modify_value var 100
echo "The value of var is now: $var"



#Positional Arguments
print_args() {
  echo "First: $1"
  echo "Second: $2"
  echo "All: $@"    #all arguments as an array format / separate word
  echo "ALL : $*"   # but as a single string
  echo "Total: $#"
}
print_args apple banana cherry



# Loop Over All Arguments ($@)
loop_args() {
  for arg in "$@"; do
    echo "Arg: $arg"
     ((count++))
  done
}
count=0
loop_args Linux Docker Git Jenkins
echo "the loop run $count times "


# Loop Over All Arguments ($*)
loop_args() {
  for arg in "$*"; do
    echo "Arg: $arg"
    ((count++))
  done
}
count=0
loop_args Linux Docker Git Jenkins
echo "the loop run $count times "



# Pass Array as Argument 
handle_array() {
  local -n arr=$1
  for item in "${arr[@]}"; do
    echo "Item: $item"
  done
}
myArray=(one two three)
handle_array myArray
