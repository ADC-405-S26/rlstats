#' A table with some statistics comparing two teams in a game
#'
#' @param df A data frame with data from the rocket league stats api
#' @param game A string specifying the guid of the desired match to analyze.
#'
#' @returns A table with statistics comparing the teams partaking in a game
#' @importFrom dplyr filter summarize n group_by
#' @importFrom rlang .data
#' @importFrom gt gt tab_header fmt_number fmt_percent
#' @export
#'
#' @examples
#' compare_teams(TDMZ443games, game = "D96D303C11F15617E1F59A8137901B26")
compare_teams <- function(df,game)
{
  checkmate::assert_data_frame(df)
  checkmate::assert_string(game)


  df |>
    filter(.data$MatchGuid == game) |>
    group_by(.data$TeamNum, .data$Name) |>
    summarize(
      goals = max(.data$Goals),
      touches = max(.data$Touches),
      shots = max(.data$Shots),
      saves = max(.data$Saves),
      assists = max(.data$Assists),
      car_touches = max(.data$CarTouches),
      demos = max(.data$Demos),
      .groups = "drop"
    ) |>
    group_by(.data$TeamNum) |>
    summarize(
      Number_Of_Goals = sum(.data$goals),
      Number_of_Ball_Touches = sum(.data$touches),
      Number_Of_Shots = sum(.data$shots),
      Number_Of_Saves = sum(.data$saves),
      Number_Of_Assists =  sum(.data$assists),
      Number_Of_Car_Touches = sum(.data$car_touches),
      Number_Of_Demos = sum(.data$demos)
    ) |>
    gt() |>
    tab_header(title = paste("Stats for teams"))

}
