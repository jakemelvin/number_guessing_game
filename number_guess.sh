#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME
USERNAME_IN_DATABASE=$($PSQL "SELECT username FROM players WHERE username='$USERNAME'")
if [[ -z $USERNAME_IN_DATABASE ]]
then
  echo Welcome, $USERNAME! It looks like this is your first time here.
  INSERT_USER_IN_PLAYERS=$($PSQL "INSERT INTO players(username) VALUES('$USERNAME')")
else
  NUMBER_OF_GAMES=$($PSQL "SELECT COUNT(game_id) FROM games INNER JOIN players USING(player_id) WHERE username='$USERNAME_IN_DATABASE'")
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games INNER JOIN players USING(player_id) WHERE username='$USERNAME_IN_DATABASE'")
  echo "Welcome back, $USERNAME_IN_DATABASE! You have played $NUMBER_OF_GAMES games, and your best game took $BEST_GAME guesses."
fi

RANDOM_NUMBER=$(( RANDOM % 1000 + 1 ))
NUMBER_OF_GUESSES=1
echo "Guess the secret number between 1 and 1000:"
read SELECTED_NUMBER
while [[ $SELECTED_NUMBER != $RANDOM_NUMBER ]]
do
  if [[ ! $SELECTED_NUMBER =~ ^[-+]?[0-9]+$ ]]
  then
    while [[ ! $SELECTED_NUMBER =~ ^[-+]?[0-9]+$ ]]
    do
      echo "That is not an integer, guess again:"
      read SELECTED_NUMBER
    done
  fi
  if [[ $SELECTED_NUMBER < $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read SELECTED_NUMBER
    (( NUMBER_OF_GUESSES++ ))
  fi
  if [[ $SELECTED_NUMBER > $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read SELECTED_NUMBER
    (( NUMBER_OF_GUESSES++ ))
  fi
done 
#Remplissage des données après une partie
PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(player_id,number_of_guesses) VALUES($PLAYER_ID,$NUMBER_OF_GUESSES)")

echo You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job\!

