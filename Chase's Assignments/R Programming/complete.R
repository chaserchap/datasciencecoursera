complete <- function(directory,id = 1:332){
  files <- list.files(directory,full.names=TRUE)
  evaluation <- vector()
  for(i in id){
    data <- read.csv(paste(getwd(),files[i],sep="/"))
    data <- complete.cases(data)
    evaluation <- append(evaluation,sum(data))
  }
  results <- cbind(id,evaluation)
  colnames(results) <- c("id","nobs")
  results <- as.data.frame(results)
  results
}
