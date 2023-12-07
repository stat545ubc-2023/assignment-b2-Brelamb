#' Find Unique Variables in a Column Starting With a Specific Letter 
#' 
#' The getNamesStart function can be used to retrieve unique categorical variables present in a specified column starting with a given letter.
#' @param df Data or data frame.
#' @param categoricalCol A column containing categorical variables. 
#' @param letter The letter you would like to search for names that begin with in the categorical column.
#' @return This function returns a categorical value or name, after filtering for a specific first letter.
#' @examples
#'  dfSample <- data.frame(
#' fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
#' numFruit = c(17, 90, 35, 49, 102))
#' getNamesStart(dfSample, "fruit", "c")
#' 
#' getNamesStart(palmerpenguins::penguins, "island", "T")
#' 
#' @export
getNamesStart <- function(df, categoricalCol, letter) {
  if (!(categoricalCol %in% names(df))) {
    stop("column name not found in the data.")
  }

  filtered_names <- df |>
    dplyr::filter(stringr::str_detect(.data[[categoricalCol]], stringr::str_c("^", letter))) |>
    dplyr::pull(categoricalCol) |>
    unique()
  
  return(filtered_names)
}
