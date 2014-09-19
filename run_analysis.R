## run_analysis.R
##
## Written by: Zoltan Novak (novak.zoltan@gmail.com) / 2014-09-19
##
## 
## R script called run_analysis.R that does the following. 
## 1) Merges the training and the test sets to create one data set.
## 2) Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3) Uses descriptive activity names to name the activities in the data set
## 4) Appropriately labels the data set with descriptive variable names. 
## 5) From the data set in step 4, creates a second, independent tidy data set with the average of 
##    each variable for each activity and each subject.
## 6) writes resulting data set to a file
## 
## 
## The script uses the below auxilary functions for the sake of easier readability and code efficiency
##
## loadActivity.R       - activities from file
## loadFeatureNames.R   - required variable names from file
## loadSubjects.R       - subject ID-s from file
## loadData.R           - data points from file
## 
## For more details, please read the guiding comments in the source code or contact the author 
## 

source("loadActivity.R")
source("loadFeatureNames.R")
source("loadSubjects.R")
source("loadData.R")


## Creating the merged, cleaned TEST data set
##
dataset_test <- cbind(loadSubjects("UCI HAR Dataset/test/subject_test.txt"),
                     loadActivity("UCI HAR Dataset/test/y_test.txt"), 
                     loadData("UCI HAR Dataset/test/X_test.txt", 
                              loadFeatureNames("UCI HAR Dataset/features.txt"), 
                              bsize=300, 
                              rowcount=3000)
                     )

## Creating the merged, cleaned TRAIN data set
##
dataset_train  <- cbind(loadSubjects("UCI HAR Dataset/train/subject_train.txt"),
                        loadActivity("UCI HAR Dataset/train/y_train.txt"), 
                        loadData("UCI HAR Dataset/train/X_train.txt", 
                                 loadFeatureNames("UCI HAR Dataset/features.txt"), 
                                 bsize=300, 
                                 rowcount=10000)
                        )

## Merging the TRAIN and TEST data set
##
result <- rbind(dataset_train, dataset_test)
                        
write.table(result, "Getting_and_Cleaning_Data_project.txt", row.name=FALSE)

