# Calculates some basic aggregate stats for a specified player

Calculates some basic aggregate stats for a specified player

## Usage

``` r
stats_for_player(df, name, game = NULL)
```

## Arguments

- df:

  A data frame with data from the rocket league stats api

- name:

  A string specifying the gamer-tag of the desired player

- game:

  Optional. A string specifying the guid of the desired match to
  analyze. Otherwise aggregates over all matches.

## Value

Some aggregate statistics for the specified player

## Examples

``` r
stats_for_player(TDMZ443games, name = "TDMZ443")


  


Stats for TDMZ443
```
