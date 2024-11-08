# Purpose: Handle the files which are stored in the data directory
# Author: David Atanasov
# Date: November 5 2024
# Version: 0.0.1
# Bugs and Issues: None as of November 5 2024
#'
#' List all CSV files in the data/ folder, which is where the activation data 
#' will be
#' 
#' @return A list of all the file names
#' @export
list_csv_files <- function() {

  # Using the inbuilt R functions we filter for CSVs simply and return the 
  # value
  file_list <- list.files(path = system.file("extdata", package = "bioseer"), 
  pattern = "\\.csv$", full.names = TRUE)
  return(file_list)
}
