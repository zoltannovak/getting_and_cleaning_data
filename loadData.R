## Function for loading the data sets from the provided file. 
## The function also cleans the not reqiured measures and assigns meaningful column names.
## 
## Parameter(s):
## 
## fileName     - the file to load the data from
## feat         - the list of measures (column + measure names) that are required from the file
## bsize        - buffer size (tuning options for efficient loading & memory allocation. Value 300 worked with 6GB RAM)
## rowcount     - the number of rows in the file (define limit for better RAM utilization)
## 

loadData <- function(filename, feat, bsize=300, rowcount=10000){
                
        x <- read.fwf(filename, 
                           widths = rep(16, 561), 
                           comment.char="", 
                           nrows=rowcount, 
                           buffersize=bsize, 
                           header=FALSE)
        x <- x[feat$columnIds]
        names(x) <- feat$columnNames
        
        x        
}