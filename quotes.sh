#!/bin/bash

first_name="Ravi"
last_name="Kumar"

# 1. Using Single Quotes 
echo 'My name is $first_name $last_name'

# 2. Using Double Quotes 
echo "My name is $first_name $last_name"

# 3. Using Backticks for Command Substitution 
current_date=`date +%d-%m-%Y`
echo "Today's date is: $current_date"

# Combining All Three
greeting="Hello"
echo "$greeting, '$first_name $last_name'! Today is $current_date."

