# A table with some statistics comparing two teams in a game

A table with some statistics comparing two teams in a game

## Usage

``` r
compare_teams(df, game)
```

## Arguments

- df:

  A data frame with data from the rocket league stats api

- game:

  A string specifying the guid of the desired match to analyze.

## Value

A table with statistics comparing the teams partaking in a game

## Examples

``` r
compare_teams(TDMZ443games, game = "D96D303C11F15617E1F59A8137901B26")


  


Stats for teams
```
