#!/bin/bash

str="hello World"

echo "${#str}"    

echo  "${str/world/deepak}"   #replacing

echo "${str^^}"
echo ${str} |  tr '[:lower:]' '[:upper:]' 
echo ${str} | tr 'a-z' 'A-Z'
