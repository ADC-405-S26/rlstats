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
#' stats_for_player(TDMZ443games, name = "TDMZ443")
#'
#' stats_for_player(TDMZ443games, name = "TDMZ443", "D96D303C11F15617E1F59A8137901B26")
stats_for_player <- function(df,name,game = NULL)
{
  checkmate::assert_data_frame(df)
  checkmate::assert_string(name)
  checkmate::assert_string(game, null.ok = TRUE)

  checkmate::assert_choice(name, choices = df$Name)
  if(!is.null(game)){
  checkmate::assert_choice(game, choices = df$MatchGuid)
  }


  s <- if(is.null(game)){
    df |>  filter(.data$Name == name)
  } else{
    df |>  filter(.data$Name == name, .data$MatchGuid == game)
  }

  stats <- s |>   summarize(Number_of_Ball_Touches = max(.data$Touches),
      Number_Of_Goals = max(.data$Goals),
      Number_Of_Saves = max(.data$Saves),
      Average_Speed = mean(.data$Speed, na.rm = TRUE),
      Average_Boost = mean(.data$Boost, na.rm = TRUE),
      Percentage_Of_Time_Supersonic = sum(.data$bSupersonic == 'True')/n())

  stats |> gt() |>
    tab_header(title = paste("Stats for", name)) |>
    fmt_number(columns = c('Average_Speed', 'Average_Boost'), decimals = 2) |>
    fmt_percent(columns = 'Percentage_Of_Time_Supersonic', decimals = 1)

  }

