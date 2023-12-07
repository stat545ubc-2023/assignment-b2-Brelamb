#' Count the Number of Unique Values in a Categorical Column 
#' 
#' The countNamesUnique function can be used to count the unique categorical variables present in a specified column of a data frame.
#' @param df Data or data frame  
#' @param categoricalCol A column containing categorical variables. 
#' @return This function returns a numerical output, from the row counts after filtering.
#' @examples
#'  dfSample <- data.frame(
#' fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
#' numFruit = c(17, 90, 35, 49, 102))
#' countNamesUnique(dfSample, fruit)
#' 
#' countNamesUnique(palmerpenguins::penguins, species)
#' 
#' @export
countNamesUnique <- function(df, categoricalCol) {
  namesUniq <- unique(df[[as.character(substitute(categoricalCol))]])
  
  if (all(sapply(namesUniq, is.numeric))) {
    stop("The categorical column input must be a column name that contains categorical values")
  }
  
  numUnique <- length(namesUniq)
  return(numUnique)
}

