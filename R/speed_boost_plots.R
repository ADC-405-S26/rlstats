#' Line plots showing a players boost and speed for a game
#'
#' @param df  A data frame with data from the rocket league stats api
#' @param name A string specifying the gamer-tag of the desired player
#' @param game A string specifying the guid of the desired match to analyze.
#'
#' @returns Two line plots. One depicting a player's speed over the course of a  specified game. The other depicts the players boost total
#' @importFrom ggplot2 ggplot aes geom_line labs theme_minimal scale_x_continuous
#' @importFrom patchwork wrap_plots
#' @importFrom dplyr filter mutate summarize group_by n row_number
#' @export
#'
#' @examples
#'speed_boost_plots(TDMZ443games, name = "TDMZ443", "D96D303C11F15617E1F59A8137901B26")
speed_boost_plots <- function(df, name, game) {

  checkmate::assert_data_frame(df)
  checkmate::assert_string(name)
  checkmate::assert_string(game)

  checkmate::assert_choice(name, choices = df$Name)
  checkmate::assert_choice(game, choices = df$MatchGuid)


  player_df <- df |>
    filter(.data$Name == name, .data$MatchGuid == game) |>
    mutate(time_bucket = floor(.data$TimeSeconds / 15) * 15) |>
    group_by(.data$time_bucket) |>
    summarize(avg_speed = mean(.data$Speed, na.rm = TRUE),
              avg_boost = mean(.data$Boost, na.rm = TRUE))

  speed_plot <- ggplot(player_df, aes(x = .data$time_bucket, y = .data$avg_speed)) +
    geom_line(color = "steelblue") +
    labs(title = paste("Speed -", name),
         x = "Time (seconds)",
         y = "Average Speed") +
    theme_minimal()

  boost_plot <- ggplot(player_df, aes(x = .data$time_bucket, y = .data$avg_boost)) +
    geom_line(color = "darkorange") +
    labs(title = paste("Boost -", name),
         x = "Time (seconds)",
         y = "Average Boost") +
    theme_minimal()

  wrap_plots(speed_plot, boost_plot)
}
