test_that("plot_activations generates a plot at all", {
  plot <- plot_activations("data/feature_0_A0A397BXJ4.csv")
  
  expect_s3_class(plot, "ggplot")
})