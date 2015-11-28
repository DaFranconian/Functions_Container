## The "dir2frame" function reads all files in a given directory and combines 
## them into one single data frame.

## Arguments: "dir" = contains the name if the directory 

dir2frame <- function(dir) {
  
  ## Read full file names for given directory
  full_list <- list.files(dir, full.names = TRUE)
  
  ## Build list of data frames based on all files
  combined_data <- lapply(full_list,read.csv)
  
  ## Combine lists into one data frame
  sum_frame <- do.call(rbind,combined_data)
  
  ## return combined single data frame
  sum_frame
}