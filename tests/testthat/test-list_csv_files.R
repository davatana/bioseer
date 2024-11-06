test_that("list_csv_files returns anything at all", {
  result <- list_csv_files()

  # We want the type to be a string and for a non-negative 
  # length output to come up.
  expect_type(result, "character")
  expect_true(length(result) >= 0) 
})
