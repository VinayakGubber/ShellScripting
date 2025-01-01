#!/bin/bash
# Function to display countdown timer
countdown() {
  local time_left=$1
  while [ $time_left -gt 0 ]; do
  clear
    echo "Time left: $time_left seconds"
    sleep 1
    ((time_left--))
  done
  echo "Time's up!"
}

# Specify the countdown time (in seconds)
echo "Enter time in seconds: "
read time_in_seconds

# Start the countdown
countdown $time_in_seconds
