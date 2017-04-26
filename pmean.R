pmean <- function(directory, pollutant, id = 1:332) {
    filePath = paste('/home/morhun/DataScienceCourseKNU', directory, sep = "/")
    pollutionData = c()
    for (i in id) {
        filenameWithoutExtencion = paste(filePath, sprintf("%03d", i), sep = '/')
        filename = paste(filenameWithoutExtencion, ".csv", sep = "")
        data = read.csv(filename, header=TRUE, sep=",")
        
        pollutionData = c(data[, pollutant], pollutionData)
    }
    return(mean(pollutionData, na.rm = TRUE))
}

complete <- function(directory, id = 1:332) {
    csvfiles <- sprintf("/home/morhun/DataScienceCourseKNU/%03d.csv", directory, id)
    res = c()
    for (csv in csvfiles) {
        file = read.csv(csv)
        res = c(res, nrow(file[complete.cases(file),]))
    }
    
    return(data.frame(id = sprintf('%3d', id), 
               nobs = res
    ))
}

corr <- function(directory, threshold = 0) {
  completedData <- complete(directory)
  ids <- subset(completedData, completedData$nobs > threshold)$id
  
  correlationVector <- sapply(ids, function(single_id) {
    path <- sprintf("/home/morhun/DataScienceCourseKNU/%03d.csv", directory, single_id)
    completedData <- read.csv(path)
    
    completedData <- subset(completedData, complete.cases(completedData))
    cor(completedData$sulfate, completedData$nitrate)
  })
  return(correlationVector)
}
