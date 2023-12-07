#' Count the number of categorical observations starting with a specific letter.
#'
#' This function looks down a categorical column of a data set and returns the count of categorical observations
#' that start with a given letter.
#'
#' @param df Data or data frame.
#' @param categoricalCol A column containing categorical variables.
#' @param letter A letter to filter through the starting letter of categorical variables.
#'
#' @return The count of categorical observations starting with the specified letter.
#' 
#' @import dplyr
#' @import stringr
#' @import palmerpenguins
#'
#' @examples
#' countStart(palmerpenguins::penguins, species, "G")
#'
#' @export
countStart <- function(df, categoricalCol, letter) {
  if (is.numeric(letter)) {
    stop("The letter parameter cannot be a number.")
  }
  df |>
    dplyr::filter(stringr::str_starts({{categoricalCol}}, letter)) |>
    dplyr::summarise(count = n()) |>
    dplyr::pull(count)
}