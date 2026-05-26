# An example dataset containing rocket league gameplay data

This particular dataset contains data on three rocket league 3v3 matches
played by TDMZ443. It collected using a python script and the Rocket
League Stats API.

## Usage

``` r
TDMZ443games
```

## Format

### `TDMZ443games`

A data frame with 43,362 rows and 20 columns.

Note: Boost, Speed, and boolean fields contain data only for TDMZ443 and
his teammates.

- timestamp:

  An integer timestamp created by the script written to collect this
  data

- TimeSeconds:

  An integer denoting what second in the game the data point was
  recorded at. There are 300 seconds in a game, and 7 data points per
  second per player

- MatchGuid:

  A string globally-unique-identifier that uniquely identifies a game.
  This dataset contains 3.

- Name:

  A string denoting a player's gamer tag. There are 6 unique gamer tags
  per game.

- TeamNum:

  An integer denoting which of the two teams the specified player is on.
  1 or 2.

- Score:

  An integer denoting the player's score at the time that data point was
  collected

- Goals:

  An integer denoting the number of goals a player had at that time

- Assists:

  An integer denoting the number of assists a player had at that time

- Saves:

  An integer denoting the number of saves a player had at that time

- Shots:

  An integer denoting the number of shots a player had at that time

- Touches:

  An integer denoting the number of times a player had touched that ball
  at that time

- CarTouches:

  An integer denoting the number of times a player had touched/bumped
  into another player's car

- Demos:

  An integer denoting the number of demolitions a player had at that
  time

- Boost:

  An integer denoting how much boost a player had at that time. Will be
  between 0-100.

- bBoosting:

  A boolean indicating whether or not a player was boosting at that
  time.

- Speed:

  An integer denoting the speed of the player at that time in "kph".

- bSupersonic:

  A boolean indicating whether or not the player was supersonic at that
  time

- bOnGround:

  A boolean indicating whether or not the player was on the ground at
  that time

- bOnWall:

  A boolean indicating whether or not the player was on the wall at that
  time.

- bDemolished:

  A boolean indicating whether or not the player was demolished at that
  time.
