test_that("mean_median_range function works correctly with no NA's", {
  firsttest <- mean_median_range(1:10)
  expect_equal(firsttest[1], 5.5)
  expect_equal(firsttest[2], 5.5)
  expect_equal(firsttest[3:4], c(1, 10))
})

test_that("mean_median_range function works correctly with NA's", {
  second1test <- mean_median_range(c(1:5, NA), na.rm = TRUE)
  expect_equal(second1test[1], 3)
  expect_equal(second1test[2], 3)
  expect_equal(second1test[3:4], c(1, 5))

  second2test <- mean_median_range(c(1:5, NA))
  expect_equal(second2test[1], NA_real_)
  expect_equal(second2test[2], NA_real_)
  expect_equal(second2test[3:4], c(NA_real_, NA_real_))
})

test_that("mean_median_range function does not work when input is not numeric", {
  expect_error(mean_median_range(c("apple", "banana", "strawberry", "grape")), "Input is not numeric, this function requires numeric values.")
})

test_that("mean_median_range function returns an output of the correct length", {
fourthtest <- mean_median_range(1:10)
  expect_length(fourthtest, 4)
})
