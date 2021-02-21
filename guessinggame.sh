#!/usr/bin/env bash
# File: guessinggame.sh


function countFilesInCurDir {
  echo $(ls -p | grep -v / | wc -l)
}

function playGuessingGame {
  echo "Please guess how many files are in the current directory:"
  read guess

  while [[ $guess -ne $1 ]]
  do
    if [[ $guess -gt $1 ]]
    then
      echo "Your guess is higher than ground truth. Please guess again:"
      read guess
    else
      echo "Your guess is lower than ground truth. Please guess again:"
      read guess
    fi
  done

  echo "You got it right! Congratulation!"
}

playGuessingGame $(countFilesInCurDir)
