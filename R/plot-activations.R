#' Plot the activations resulting from a given feature on the given amino acid, currently just 0 and 1.
#' 
#' @param file_path Path to the CSV file.
#' @return A ggplot.
#' @import ggplot2
#' @export
plot_activations <- function(file_path) {
  library(ggplot2)
  
  data <- read.csv(file_path, header = FALSE, col.names = c("AminoAcid", "Activation"))
  
  data_summary <- aggregate(Activation ~ AminoAcid, data, sum)
  
  ggplot(data_summary, aes(x = AminoAcid, y = Activation)) +
    geom_bar(stat = "identity") +
    labs(title = "Activation plot", x = "Amino Acid", y = "Activation")
}