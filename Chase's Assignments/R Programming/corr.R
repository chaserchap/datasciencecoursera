corr <- function(directory,threshold = 0){
  files <- list.files(directory,full.names=TRUE)
  results <- vector()
  for(i in files){
    data <- read.csv(paste(getwd(),i,sep="/"))
    complete <- complete.cases(data)
    if(sum(complete) > threshold) {
      correlation <- cor(data$sulfate,data$nitrate,use = "na.or.complete")
      results <-append(results,correlation)
    }
  }
  results <- as.numeric(results)
  return(results)
}