
#Test 1 - Test that the function countNamesUnique output is numeric:

test_that("countNamesUnique function test for numeric output", {
  output <- countNamesUnique(palmerpenguins::penguins, island)
  expect_true(is.numeric(output), info = "The function output should numeric")
})

# Test 2 - Check that the countNamesUnique function produces an error for a numeric column input:

test_that("countNamesUnique function test for for numeric column input error", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  expect_error(countNamesUnique(dfSample, numFruit), "The categorical column input must be a column name that contains categorical values")
})

# Test 3 - Check if the function returns the correct number of unique names for a categorical column

test_that("Returns correct number of unique names for categorical column", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  numberTest <- countNamesUnique(dfSample, fruit)
  expect_equal(numberTest, 5)
})