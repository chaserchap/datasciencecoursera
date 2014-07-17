pollutantmean <- function(directory, pollutant, id = 1:332) {
  data <- list.files(directory,full.names=TRUE)
  pollutantdata <- c()
  for(i in id) {
    datatable <- read.csv(paste(getwd(),data[i],sep="/"))
    pollutantdata <- append(pollutantdata,unlist(datatable[pollutant]))
  }
  bad <- is.na(pollutantdata)
  pollutantdata <- pollutantdata[!bad]
  pmean <- mean(pollutantdata)
  print(pmean)
}
