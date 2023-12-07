
# Test 1 - Test that the output of the getNamesStart function not a number.

test_that("getNamesStart output is not a number", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102)
  )
  notNumb <- getNamesStart(dfSample, "fruit", "d")
  expect_false(is.numeric(notNumb))
})

# Test 2 - Test that the getNamesStart function will properly filter for the first letter given.

test_that("getNamesStart function will properly filter for the first letter given", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  expect_equal(
    getNamesStart(dfSample, "fruit", "c"),
    c("cherry", "coconut")
  )}
)
  
#Test 3 - Test that the column that the getNamesStart function is filtering through exists in the data.

test_that("The function getNamesStart throws an error if a colunm that isn't in the data is input", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
  expect_error(
    getNamesStart(dfSample, "fakeColumn", "A"),
    "column name not found in the data."
  )
})