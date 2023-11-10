#' Count Names That Fall Within a Numerical Value Range
#' 
#' The getNamesCount function can be used to count the number of observations in a categorical column that meet the value criteria specified from a numerical column.
#' @param df Data or data frame  
#' @param categoricalCol A column containing categorical variables. 
#' @param numericalCol A column contain numerical values.
#' @param numericalValue A number from the numerical values column.
#' @return This function returns a numerical output, from the row counts after filtering.
#' @examples
#'  dfSample <- data.frame(
#' fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
#' numFruit = c(17, 90, 35, 49, 102))
#' getNamesCount(dfSample, fruit, numFruit, 50)
#' 
#' getNamesCount(palmerpenguins::penguins, species, bill_length_mm, 43.92)
#' 
#' @export
getNamesCount <- function(df, categoricalCol, numericalCol, numericalValue) {
  if (!is.numeric(numericalValue)) {
    stop("Check that your numericalValue input is a number.")
  }
  result <- df |> 
    dplyr::filter(!is.na({{ numericalCol }}), {{ numericalCol }} < numericalValue) |> 
    dplyr::select({{ categoricalCol }})
  
  count <- nrow(result)
  
  return(count)
}


