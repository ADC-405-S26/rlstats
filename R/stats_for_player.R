#' Calculates some basic aggregate stats for a specified player
#'
#' @param df A data frame with data from the rocket league stats api
#' @param name A string specifying the gamer-tag of the desired player
#' @param game Optional. A string specifying the guid of the desired match to analyze. Otherwise aggregates over all matches.
#'
#' @returns Some aggregate statistics for the specified player
#' @importFrom dplyr filter summarize n
#' @importFrom rlang .data
#' @importFrom gt gt tab_header fmt_number fmt_percent
#' @export
#'
#' @examples
#' stats_for_player(rocket_data, name = "TDMZ223")
#'
#' stats_for_player(rocket_data, name = "TDMZ223", "C34377FE11F153C39C443797FB07660C")
stats_for_player <- function(df,name,game = NULL)
{
  checkmate::assert_data_frame(df)
  checkmate::assert_string(name)
  checkmate::assert_string(game, null.ok = TRUE)

  s <- if(is.null(game)){
    df |>  filter(.data$player_name == name)
  } else{
    df |>  filter(.data$player_name == name, .data$match_guid == game)
  }

  stats <- s |>   summarize(Number_of_Ball_Touches = sum(.data$touches),
      Number_Of_Goals = sum(.data$goals),
      Number_Of_Saves = sum(.data$saves),
      Average_Speed = mean(.data$speed, na.rm = TRUE),
      Average_Boost = mean(.data$boost, na.rm = TRUE),
      Percentage_Of_Time_Supersonic = sum(.data$is_supersonic == 'True')/n())

  stats |> gt() |>
    tab_header(title = paste("Stats for", name)) |>
    fmt_number(columns = c('Average_Speed', 'Average_Boost'), decimals = 2) |>
    fmt_percent(columns = 'Percentage_Of_Time_Supersonic', decimals = 1)

  }

