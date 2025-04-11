#!/bin/bash

 myArray=( 1 2 3 "Hello" "World" )  # Correct declaration

echo "Array Length: ${#myArray[@]}"  # Prints: 5
echo "First Element: ${myArray[0]}"  # Prints: 1
echo "Last Element: ${myArray[4]}"   # Prints: World


# Using declare (optional)
declare -a fruits=("Apple" "Banana" "Cherry")
echo "${fruits[*]}"
echo "${fruits[0]}"   # Prints "Mango"
echo "${fruits[1]}"   # Prints "Orange"

echo "#########################"

# Without declare
fruits=("notapple" "NotBanana" "Cherry")
echo "${fruits[*]}"
echo "${fruits[0]}"   
echo "${fruits[1]}" 
echo "#########################"



# Assigning values individually
fruits[0]="Mango"
fruits[1]="Orange"
echo "#########################"
echo "${fruits[0]}"   
echo "${fruits[1]}" 
echo "#########################"
echo "${fruits[@]}"

echo "#########################"

echo "${#fruits[*]}"  # Number of elements in the array
