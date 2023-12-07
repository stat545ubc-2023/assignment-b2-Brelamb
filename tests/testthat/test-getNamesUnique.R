
# Test 1 - Testing that the name output of the getNamesUnique function is unique:

test_that("Ensure output is unique", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  result <- getNamesUnique(dfSample, fruit)
  expect_identical(result, unique(result))
})

# Test 2 - Test that the getNamesUnique function output is not numeric:

test_that("Test the output to ensure it is not numeric", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  result <- getNamesUnique(dfSample, fruit)
  expect_true(is.character(result) || is.factor(result))
})


# Test 3 - Ensure error is raised if the input column name is a number:

test_that("Ensure error is raised if the input column name is a number", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  expect_error(getNamesUnique(dfSample, 123), "The input column name must be a character, not a number.")
})