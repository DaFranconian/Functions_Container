## The new "colmeans" function returns a vector containing the means of all columns of a given data set
## Arguments: "set" = data set for calculation; "removeNA" --> ignore NA values w/ default value "TRUE"; 
## if one of the values is NA in a column the mean is going to be NA as well

colmeans <- function(set, removeNA=TRUE) {
  ## count number of columns in given data set
  nc <- ncol(set)
  
  ## initialize vector w/ number of columns as length
  means <- numeric(nc)
  
  ## loop through number of columns and remove NAs if specified
  for(i in 1:nc) {
    means[i] <- mean(set[,i], na.rm=removeNA)
  }
  
  ## return result vector
  means
}