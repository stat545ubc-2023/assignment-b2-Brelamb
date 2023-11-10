
#Test 1 - Test that the functions output is numeric:

test_that("getNamesCount function test for numeric output", {
  output <- getNamesCount(palmerpenguins::penguins, island, bill_depth_mm, 15)
  expect_true(is.numeric(output), info = "The function output should numeric")
})

# Test 2 - Test the error message for the 'numericalValue' input:

test_that("getNamesCount function error message with non-numeric numericalValue input", {
  expect_error(getNamesCount(palmerpenguins::penguins, sex, body_mass_g, 'p'),
               "Check that your numericalValue input is a number.", 
               info = "The getNamesCount function should display error message for a non-numeric numericalValue")
})



## Test 3 - Test that the function filters for NA values:
  
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
test_that("getNamesCount function test for filtering NA observations", {
  output <- getNamesCount(dfSample, fruit, numFruit, 103)
  expect_equal(output, 4, info = "getNamesCount function should filter NA observations out of count")
})

rm(dfSample)