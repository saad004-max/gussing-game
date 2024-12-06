#!/bin/bash

# Function to get the number of files in the directory
function file_count {
  echo $(ls -1 | wc -l)
}

# Main game logic
echo "Welcome to the Guessing Game!"
actual_count=$(file_count)
user_guess=-1

while [[ $user_guess -ne $actual_count ]]; do
  echo "How many files are in the current directory? Enter your guess:"
  read user_guess

  if [[ $user_guess -lt $actual_count ]]; then
    echo "Too low!"
  elif [[ $user_guess -gt $actual_count ]]; then
    echo "Too high!"
  else
    echo "Congratulations! You guessed it right."
  fi
done
