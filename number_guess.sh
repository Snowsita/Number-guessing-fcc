#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Secret number
SECRET_NUMBER=$(( RANDOM % 1000 + 1 ))

# Initial username
echo -e "\nEnter your username:"
read USERNAME

# Information about the query
EVERYTHING=$($PSQL "SELECT u.user_id, u.username, COUNT(g.game_id) AS games_played, MIN(g.number_of_guesses) AS best_game FROM users u LEFT JOIN games g ON u.user_id = g.user_id WHERE username='$USERNAME' GROUP BY u.user_id, u.username LIMIT 1")

if [[ -z $EVERYTHING ]]
then
  # Insert new user
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
else
  # Extract user details correctly
  USER_ID=$(echo "$EVERYTHING" | cut -d "|" -f1)
  DB_USERNAME=$(echo "$EVERYTHING" | cut -d "|" -f2)
  GAMES_PLAYED=$(echo "$EVERYTHING" | cut -d "|" -f3)
  BEST_GAME=$(echo "$EVERYTHING" | cut -d "|" -f4)

echo "Welcome back, $DB_USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

# Debugging
if [[ -z $USER_ID ]]
then
  echo "ERROR: USER_ID is empty!"
  exit 1
fi

  # Starting the game
echo -e "\nGuess the secret number between 1 and 1000:"

NUMBER_OF_GUESSES=0

while true
do
  read GUESS
  ((NUMBER_OF_GUESSES++))

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo -e "\nIt's lower than that, guess again:"
  else
    echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    # Insert the game result
    INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
    break
  fi
done
