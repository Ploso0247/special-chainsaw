#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
$PSQL "TRUNCATE TABLE teams restart identity cascade"
cut -d, -f3,4 games.csv | tail -n +3 | tr ',' '\n' | sort -u | while read -r TEAM; do
  $PSQL "INSERT INTO teams (name) VALUES ('$TEAM');"
done
while IFS=',' read -r YEAR ROUND WINNER OPPONENT WINNERG OPPONENTG; do
  winner_id=$($PSQL "SELECT team_id FROM teams WHERE name = '$WINNER';")
  opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name = '$OPPONENT';")
  $PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $winner_id, $opponent_id, $WINNERG, $OPPONENTG);"
done < games.csv
