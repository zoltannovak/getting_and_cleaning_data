## Function for loading the activity types from the provided file. 
## The function enhances the activity codes with activity names based on hardcoded values from the 
## provided "activity_labels.txt" file.
## 
## Parameter(s):
## 
## fileName - the file to load the activity codes from
## 

loadActivity <- function(fileName){

        act <- read.csv(fileName, header=FALSE)
        act <- cbind(act, as.factor(act[[1]]))
        names(act) <- c("activityId", "activityName")
        ## Creating more meaningful value names in the "Activity" factor variable using the below mappings
        ## 1 WALKING
        ## 2 WALKING_UPSTAIRS
        ## 3 WALKING_DOWNSTAIRS
        ## 4 SITTING
        ## 5 STANDING
        ## 6 LAYING
        levels(act$activityName) <- c("WALKING", 
                                      "WALKING_UPSTAIRS", 
                                      "WALKING_DOWNSTAIRS", 
                                      "SITTING", 
                                      "STANDING", 
                                      "LAYING")
        act        
}