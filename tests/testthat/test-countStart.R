

#Test 1 - Tests that the countStart function will throw an error message if given a number instead of a letter.

test_that("countStart error message for number input instead of letter", {
  expect_error(
    countStart(palmerpenguins::penguins, species, 2),
    "The letter parameter cannot be a number."
  )
})
  
# Test 2 - Tests that the count output is correct.

test_that("countStart gives correct count output for larger data", {
  expect_equal(
    countStart(palmerpenguins::penguins, island, "T"),
    52
  )
})

# Test 3 - Testing same as before but on easier to visualize data.

test_that("countStart gives correct count output for smaller data", {
  dfSample <- data.frame(
    fruit = c("apple", "banana", "cherry", "coconut", "dragonfruit"),
    numFruit = c(17, NA, 35, 49, 102))
expect_equal(
  countStart(dfSample, fruit, "c"),
  2
)
})

# Test 4 - Test that the function countStart produces a numeric output.

test_that("countStart produces a numeric output", {
  outNum <- countStart(palmerpenguins::penguins, species, "A")
  expect_true(is.numeric(outNum))
})
