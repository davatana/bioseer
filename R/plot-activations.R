# Purpose: Functions which help with visualizing the activations present
# Author: David Atanasov
# Date: November 5 2024
# Version: 0.0.1
# Bugs and Issues: None as of November 5 2024
#' 
#' @param file_path Path to the CSV file.
#' @return A ggplot.
#' @import ggplot2
#' @export
plot_activations <- function(file_path) {
  library(ggplot2)
  
  #We use the inbuilt R function to read the CSV but because of the way I've
  #chosen to format the file we have to give the columns names here
  data <- read.csv(file_path, header = FALSE, col.names = c("AminoAcid", "Activation"))
  
  # Summing up based on the second column which stores activations
  data_summary <- aggregate(Activation ~ AminoAcid, data, sum)
  
  ggplot(data_summary, aes(x = AminoAcid, y = Activation)) +
    geom_bar(stat = "identity") +
    labs(title = "Activation plot", x = "Amino Acid", y = "Activation")
}