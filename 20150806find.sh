#!/bin/bash

echo "**********************   . *.sh"
find . -name "*.sh"
echo "**********************   ../  *.sh"
find ../ -name "*.sh"


echo "**********************   ./  *.sh   AND size >= 2K"
find . -name "*.sh" -a -size +2



echo "**********************   ./  *.sh   or *.sample"
find . -name "*.sh" -o -name "*.sample" -exec basename {} \; 
echo "**********************   ./  *.sh   and then list them"
find . -name "*.sh" -exec ls -al {} \;  
