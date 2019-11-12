#!/usr/bin/env bash
# File: guessinggame.sh URL: https://github.com/mik315
# Project of The Unix Workbench course. Guess how many files are in the current directory.

# Counting the files in the current directory.
qty_files=$(ls -l | grep ^- | wc -l)

# Title and validate the user input an integer number.
val_num='^[0-9]+$'
echo "This is a Guessing Game!"

# Letting the user trying again,
function asking {

echo "How many files are in the current directory..?"
read guessing

}

# Output result of each attempt until the user guess.
while asking
do
  if [[ ! $guessing =~ $val_num ]]
  then
    echo "Have to be a number."
    echo ""
  elif [[ $guessing -lt $qty_files ]] 
  then
    echo "You are too low."
    echo ""
  elif [[ $guessing -gt $qty_files ]]
  then
    echo "You are too high."
    echo ""
  else
    echo "Congratulations!!! You are right!"
    echo ""
    exit 1
  fi
done