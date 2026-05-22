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
#' compare_teams(rocket_data, game = "C34377FE11F153C39C443797FB07660C")
compare_teams <- function(df,game)
{
  checkmate::assert_data_frame(df)
  checkmate::assert_string(game)


    df |>  filter(.data$match_guid == game) |>
           group_by(.data$team_num) |>
           summarize(Number_of_Ball_Touches = max(.data$touches),
                      Number_Of_Goals = max(.data$goals),
                      Number_Of_Saves = max(.data$saves),
                      Average_Speed = mean(.data$speed, na.rm = TRUE),
                      Average_Boost = mean(.data$boost, na.rm = TRUE),
                      Percentage_Of_Time_Supersonic =
                            sum(.data$is_supersonic == 'True')/n()) |>
    gt() |>
    tab_header(title = paste("Stats for teams")) |>
    fmt_number(columns = c('Average_Speed', 'Average_Boost'), decimals = 2) |>
    fmt_percent(columns = 'Percentage_Of_Time_Supersonic', decimals = 1)

}
