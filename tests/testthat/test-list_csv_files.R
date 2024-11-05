test_that("list_csv_files returns anything at all", {
  result <- list_csv_files()
  
  expect_type(result, "character")
  
  expect_true(length(result) >= 0) 
})
