# Introduction to rlstats

The goal of the `rlstats` is to package is to provide some useful
functions for analyzing Rocket League gameplay data. A lot of people
take Rocket League very seriously from a competitive point of view.
Several people seek out and pay for coaching to analyze their gameplay
in an attempt to improve. This package may be used by a player or coach
to get a more in depth look in to some aspects of a player’s gameplay
that are hard to track manually. Especially things like average speed
and boost habits. The usage of this package for this purpose requires a
player’s personal gameplay data. If you’re interested in using this
package, first check out the [Getting Your Own
Dataset](https://adc-405-s26.github.io/rlstats/articles/getting-your-dataset.html)
vignette for instructions on getting your own data.

To install this package through Github, use

``` r

#install.packages("remotes")
#install.packages("devtools")
devtools::install_github("ADC-405-S26/rlstats")
```

Then load it with the following code -

``` r

library(rlstats)
```

This package currently contains three functions

- `stats_for_player` - gives some basic summary statistics for a
  specific player
- `speed_boost_plots` - gives boost and speed line plots for a specific
  player in a specific game
- `compare_teams` - give summary statistics comparing each team in a
  specific game

## Caution

All these functions can take a $`\textit{game}`$ argument, and the first
two listed above take a $`\textit{name}`$ argument. With the current
setup, if you want to look at a specific player or game, you have to
know exactly the player name and match guid. For most this won’t be an
issue with the player name. But to know the match guid you must look at
your dataset itself, and manually find the match guid. So, if you want
to look back at a specific match you must note its match guid as soon as
the data is recorded. A cleaner system for this will be coming soon.
