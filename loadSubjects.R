## Function for loading the subject codes from the provided file
## 
## Parameter(s):
## 
## fileName - the file to load the subject codes from
## 

loadSubjects <- function(fileName){
        
        subject <- read.csv(fileName, header=FALSE)
        names(subject) <- c("subjectId")
        
        subject
}