test_that("plot_activations generates a plot at all", {

  # Call the function on the file in extdata
  plot <- plot_activations(system.file("extdata", "feature_0_A0A397BXJ4.csv",
  package = "bioseer"))
  
  # We want it to output a ggplot and not some other file type
  expect_s3_class(plot, "ggplot")
})