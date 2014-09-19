## Function for loading the column number and names of the required variables (STD and MEAN) from the provided file. 
## The function also cleans the variable names (removes ",", "-", ")", "(") so that the names
## can be used as cleaned column names in the result data set.
## 
## Parameter(s):
## 
## fileName - the file to load the feature names from
## 

loadFeatureNames <- function(fileName){
        
        feat <- read.csv(fileName, sep = " ", header=FALSE)
        names(feat) <- c("columnIds", "columnNames")

        ## cleaning the variable / column names (removes ",", "-", ")", "(")
        cleanNames <- function(x){
                gsub("[-|(|)|,|]", "", x)        
        }
        feat[2] <- sapply(feat[2], cleanNames)
        ## returning only the column names which are referring to standard deviation or meanmeasures
        feat <- feat[grepl("(std|mean)", feat[[2]]),]    
        
        feat
}

