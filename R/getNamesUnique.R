#' Display all Unique Names within a Categorical Column 
#' 
#' The getNamesUnique function can be used used to display the unique categorical variables present in a specified column of a data frame.
#' @param df Data or data frame  
#' @param categoricalCol A column containing categorical variables. 
#' @return This function returns a list of unique categorical variables.
#' @examples
#'  dfSample <- data.frame(
#' fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
#' numFruit = c(17, 90, 35, 49, 102))
#' getNamesUnique(dfSample, fruit)
#' 
#' getNamesUnique(palmerpenguins::penguins, species)
#' 
#' @export
getNamesUnique <- function(df, categoricalCol) {
  namesUniq <- unique(df[[as.character(substitute(categoricalCol))]])
  
  if (all(sapply(namesUniq, is.numeric))) {
    stop("The input column name must be a character, not a number.")
  }
  
  return(namesUniq)
}

